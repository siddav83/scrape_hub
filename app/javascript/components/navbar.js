const initUpdateNavbarOnScroll = () => {
  const topbar = document.querySelector('.top-bar');
  if (topbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 100 || window.location.pathname === "/boroughs") {
        topbar.classList.add('top-bar-white');
      } else {
        topbar.classList.remove('top-bar-white');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
