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

for(const c of all){c.style.transition="0"}
const btnCorners = document.querySelector("#btnChangeCorners")
const btnColors = document.querySelector("#btnChangeColors")


if(!getCookie("colors")){
  btnColors.setAttribute("colors", "light")
  setCookie("colors", "light")
}
else{btnColors.setAttribute("colors", getCookie("colors"))}

if(!getCookie("corners")){
  btnCorners.setAttribute("corners", "round")
  setCookie("corners", "round")
}
else{btnCorners.setAttribute("corners", getCookie("corners"))}

