const initUpdateNavbarOnScroll = () => {
  const current = window.location.pathname;
  const navbar = document.querySelector('.navbar-lewagon');

  if (current == '/') {
    navbar.classList.add('navbar-lewagon-transparent');
    if (navbar) {
      window.addEventListener('scroll', () => {
        if (window.scrollY >= 150) {
          navbar.classList.remove('navbar-lewagon-transparent');
        } else {
          navbar.classList.add('navbar-lewagon-transparent');
        }
      });
    }
  } else {
    navbar.classList.remove('fixed-top');
    navbar.classList.add('navbar-sticky');
  }
}

export { initUpdateNavbarOnScroll };
