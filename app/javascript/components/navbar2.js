const updateNavbarOnScroll = (navbarStripe) => {
  if (navbarStripe) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 100) {
        navbarStripe.classList.remove('top-bar-transparent');
      } else {
        navbarStripe.classList.add('top-bar-transparent');
      }
    });
  }
}

const initUpdateNavbarOnScroll = () => {
  const navbarStripe = document.querySelector('.navbar-stripe');
  if($('body').is('.top-bar-transparent-ident')) {
    navbarStripe.classList.add('top-bar-transparent');
    updateNavbarOnScroll(navbarStripe);
  }
}

export { initUpdateNavbarOnScroll };