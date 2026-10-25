/**
 * YouTube TV Cobalt Application Logic & Spatial Navigation Engine
 * Optimized for Cobalt runtime, Starboard Bridge & TV D-Pad interactions
 */

(function () {
  'use strict';

  // Screen State
  let currentScreen = 'screen-profile';
  let focusedElement = null;
  let osdTimeout = null;
  let isPlaying = true;
  let searchQuery = '';

  // Spatial Navigation Engine
  function initSpatialNavigation() {
    document.addEventListener('keydown', handleKeyDown);
    setScreen('screen-profile');
  }

  function setScreen(screenId) {
    document.querySelectorAll('.screen').forEach(s => s.classList.remove('active'));
    const target = document.getElementById(screenId);
    if (!target) return;

    target.classList.add('active');
    currentScreen = screenId;

    // Reset initial focus for the screen
    setTimeout(() => {
      let initFocus = target.querySelector('.initial-focus');
      if (!initFocus) {
        initFocus = target.querySelector('.focusable');
      }
      if (initFocus) {
        setFocus(initFocus);
      }
    }, 50);
  }

  function setFocus(el) {
    if (!el || !el.classList.contains('focusable')) return;

    if (focusedElement) {
      focusedElement.classList.remove('focused');
    }

    focusedElement = el;
    focusedElement.classList.add('focused');

    // Scroll container if needed
    scrollIntoViewIfNeeded(focusedElement);
  }

  function scrollIntoViewIfNeeded(el) {
    const scrollContainer = el.closest('.feed-scroll-container') || el.closest('.shelf-row');
    if (scrollContainer) {
      el.scrollIntoView({ behavior: 'smooth', block: 'nearest', inline: 'nearest' });
    }
  }

  function handleKeyDown(e) {
    const keyCode = e.keyCode || e.which;

    // Standard D-pad Key Codes
    const KEY_LEFT = 37;
    const KEY_UP = 38;
    const KEY_RIGHT = 39;
    const KEY_DOWN = 40;
    const KEY_ENTER = 13;
    const KEY_BACK = 27; // ESC or Android TV Back (often 4, 8, 27)
    const KEY_BACK_ALT = 8;
    const KEY_ANDROID_BACK = 4;

    // If on video player and OSD is hidden, any D-pad key brings OSD back
    if (currentScreen === 'screen-player') {
      const osd = document.getElementById('player-osd');
      if (osd && osd.classList.contains('hidden')) {
        showOsd();
        e.preventDefault();
        return;
      }
      resetOsdTimer();
    }

    switch (keyCode) {
      case KEY_LEFT:
        moveFocus('left');
        e.preventDefault();
        break;
      case KEY_UP:
        moveFocus('up');
        e.preventDefault();
        break;
      case KEY_RIGHT:
        moveFocus('right');
        e.preventDefault();
        break;
      case KEY_DOWN:
        moveFocus('down');
        e.preventDefault();
        break;
      case KEY_ENTER:
        activateCurrentElement();
        e.preventDefault();
        break;
      case KEY_BACK:
      case KEY_BACK_ALT:
      case KEY_ANDROID_BACK:
        handleBackNavigation();
        e.preventDefault();
        break;
    }
  }

  // 2D Spatial Nearest Element Calculation
  function moveFocus(direction) {
    if (!focusedElement) {
      const first = document.querySelector(`#${currentScreen} .focusable`);
      if (first) setFocus(first);
      return;
    }

    const currentRect = focusedElement.getBoundingClientRect();
    const candidates = Array.from(document.querySelectorAll(`#${currentScreen} .focusable`)).filter(
      el => el !== focusedElement && isVisible(el)
    );

    let bestCandidate = null;
    let minDistance = Infinity;

    candidates.forEach(candidate => {
      const candidateRect = candidate.getBoundingClientRect();

      if (!isInDirection(currentRect, candidateRect, direction)) return;

      const dist = calculateDistance(currentRect, candidateRect, direction);
      if (dist < minDistance) {
        minDistance = dist;
        bestCandidate = candidate;
      }
    });

    if (bestCandidate) {
      setFocus(bestCandidate);
    }
  }

  function isVisible(el) {
    return el.offsetWidth > 0 && el.offsetHeight > 0 && window.getComputedStyle(el).display !== 'none';
  }

  function isInDirection(from, to, direction) {
    const threshold = 15; // overlap tolerance
    switch (direction) {
      case 'left':
        return to.right <= from.left + threshold;
      case 'right':
        return to.left >= from.right - threshold;
      case 'up':
        return to.bottom <= from.top + threshold;
      case 'down':
        return to.top >= from.bottom - threshold;
    }
    return false;
  }

  function calculateDistance(from, to, direction) {
    const fromCenter = { x: (from.left + from.right) / 2, y: (from.top + from.bottom) / 2 };
    const toCenter = { x: (to.left + to.right) / 2, y: (to.top + to.bottom) / 2 };

    const dx = toCenter.x - fromCenter.x;
    const dy = toCenter.y - fromCenter.y;

    // Weight primary direction higher than orthogonal direction
    if (direction === 'left' || direction === 'right') {
      return Math.abs(dx) + Math.abs(dy) * 2.0;
    } else {
      return Math.abs(dy) + Math.abs(dx) * 2.0;
    }
  }

  // Action Handling
  function activateCurrentElement() {
    if (!focusedElement) return;

    // Profile Click
    if (focusedElement.dataset.profile || focusedElement.id === 'btn-guest') {
      setScreen('screen-home');
      return;
    }

    // Video Click (opens player)
    if (focusedElement.classList.contains('video-card') || focusedElement.id === 'hero-watch-btn') {
      openPlayer(focusedElement);
      return;
    }

    // Nav Action
    const action = focusedElement.dataset.action;
    if (action === 'search') {
      setScreen('screen-search');
      return;
    } else if (action === 'home') {
      setScreen('screen-home');
      return;
    } else if (action === 'profile') {
      setScreen('screen-profile');
      return;
    }

    // Virtual Keyboard Key Click
    const key = focusedElement.dataset.key;
    if (key) {
      handleVirtualKey(key);
      return;
    }

    // Suggestion Click
    const query = focusedElement.dataset.query;
    if (query) {
      searchQuery = query;
      updateSearchDisplay();
      return;
    }

    // Player Play/Pause Button
    if (focusedElement.id === 'btn-play-pause') {
      togglePlayPause();
      return;
    }
  }

  function openPlayer(cardElement) {
    const title = cardElement.querySelector('.card-title') ? cardElement.querySelector('.card-title').innerText : 'Love From Hubby';
    const channel = cardElement.querySelector('.card-channel') ? cardElement.querySelector('.card-channel').innerText : 'Heera Hai Sada Ke Liye';

    document.getElementById('player-title').innerText = title;
    document.getElementById('player-meta').innerText = `${channel} • 5.8 lakh views • 2 mo ago`;
    document.getElementById('player-watermark').innerText = title;

    setScreen('screen-player');
    showOsd();
    resetOsdTimer();
  }

  function togglePlayPause() {
    isPlaying = !isPlaying;
    const icon = document.querySelector('#btn-play-pause .play-icon');
    if (icon) {
      icon.innerText = isPlaying ? '⏸' : '▶';
    }
  }

  function showOsd() {
    const osd = document.getElementById('player-osd');
    if (osd) osd.classList.remove('hidden');
    resetOsdTimer();
  }

  function hideOsd() {
    const osd = document.getElementById('player-osd');
    if (osd) osd.classList.add('hidden');
  }

  function resetOsdTimer() {
    clearTimeout(osdTimeout);
    osdTimeout = setTimeout(hideOsd, 4000);
  }

  function handleVirtualKey(key) {
    if (key === 'BACKSPACE') {
      searchQuery = searchQuery.slice(0, -1);
    } else if (key === 'SPACE') {
      searchQuery += ' ';
    } else if (key === 'CLEAR') {
      searchQuery = '';
    } else if (key === 'SEARCH') {
      // Execute search
    } else if (key === 'NUM' || key === 'LANG') {
      // Toggle symbols
    } else {
      searchQuery += key;
    }
    updateSearchDisplay();
  }

  function updateSearchDisplay() {
    const display = document.getElementById('search-query-display');
    if (display) {
      display.innerText = searchQuery.length > 0 ? searchQuery : 'Search';
    }
  }

  function handleBackNavigation() {
    if (currentScreen === 'screen-player') {
      setScreen('screen-home');
    } else if (currentScreen === 'screen-search') {
      setScreen('screen-home');
    } else if (currentScreen === 'screen-home') {
      setScreen('screen-profile');
    }
  }

  // Initialize on load
  window.addEventListener('DOMContentLoaded', initSpatialNavigation);
})();
