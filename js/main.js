menuShown = false;
function hamburgerClick(e) {
  menuShown = !menuShown;
  if (menuShown) {
    document.getElementById('app-navbar').classList.add('app-navbar-shown');
  } else {
    document.getElementById('app-navbar').classList.remove('app-navbar-shown');
  }
}
