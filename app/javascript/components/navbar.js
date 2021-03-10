const updateNavbarOnScroll = (topbar) => {
  if (topbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 100) {
        topbar.classList.remove('top-bar-transparent');
      } else {
        topbar.classList.add('top-bar-transparent');
      }
    });
  }
}

const initUpdateNavbarOnScroll = () => {
  const topbar = document.querySelector('.top-bar');
  if($('body').is('.top-bar-transparent-ident')) {
    topbar.classList.add('top-bar-transparent');
    updateNavbarOnScroll(topbar);
  }
}

export { initUpdateNavbarOnScroll };
