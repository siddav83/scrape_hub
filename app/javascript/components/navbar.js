// const initUpdateNavbarOnScroll = () => {
//   const topbar = document.querySelector('.top-bar');
//   if($('body').is('.PageType')) {
//     topbar.classList.add('top-bar-white');
//   } else {
//     if (topbar) {
//       window.addEventListener('scroll', () => {
//         if (window.scrollY >= 100) {
//           topbar.classList.add('top-bar-white');
//         } else {
//           topbar.classList.remove('top-bar-white');
//         }
//       });
//     }
//   }
// }

const initUpdateNavbarOnScroll = () => {
  const topbar = document.querySelector('.top-bar');

  if($('body').is('.top-bar-transparent-ident')) {
    topbar.classList.add('top-bar-transparent');
    if (topbar) {
      window.addEventListener('scroll', () => {
        if (window.scrollY >= 100) {
          topbar.classList.remove('top-bar-tranparent');
        } else {
          // topbar.classList.add('top-bar-tranparent');
        }
      });
    }
  }
}
export { initUpdateNavbarOnScroll };

