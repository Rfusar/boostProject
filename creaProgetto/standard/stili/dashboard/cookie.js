function setCookie(name, value) {
  const date = new Date();
  date.setTime(date.getTime() + (9999 * 24 * 60 * 60 * 1000));
  expires = "; expires=" + date.toUTCString();

  document.cookie = name + "=" + value + expires + "; path=/; SameSite=Lax; Secure";
}

function getCookie(name) {
  const nameEQ = name + "=";
  const ca = document.cookie.split(';');
  for(let i = 0; i < ca.length; i++) {
    let c = ca[i];
    while (c.charAt(0) === ' ') c = c.substring(1, c.length);
      if (c.indexOf(nameEQ) === 0) return c.substring(nameEQ.length, c.length);
  }
  return false;
}

if(!getCookie("colors")){setCookie("colors", "light")}
if(!getCookie("corners")){setCookie("corners", "round")}
