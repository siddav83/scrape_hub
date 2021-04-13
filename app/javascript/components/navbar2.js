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


const menuToggles = document.querySelectorAll(".menu-toggle");
const overlay = document.querySelector(".navbar-dropdown-stripe");

function toggleOverlay() {
  overlay.classList.toggle("overlay-hidden");  
}

menuToggles.forEach(toggle => toggle.addEventListener('click', toggleOverlay));

export { initUpdateNavbarOnScroll };