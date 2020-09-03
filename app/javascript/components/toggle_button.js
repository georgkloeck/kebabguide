import { initMapbox } from '../plugins/init_mapbox';

const reloadMap = () => {
  document.querySelector("#map").innerHTML = ""
  setTimeout(initMapbox(),0)
}

const initToggleButton = () => {
  const switchButton = document.querySelector(".switch")
  if (switchButton) {
   switchButton.addEventListener("click", () => {
    console.log("test");
    if (document.querySelector(".switch input").checked) {
      document.querySelector(".list-index").classList.add("hide-content");
      document.querySelector("#map").classList.remove("hide-content");
      reloadMap()
    }
    else {
      document.querySelector("#map").
        classList.add("hide-content");
        document.querySelector(".list-index").classList.remove("hide-content");
    }
  });
  }
}
export {initToggleButton}
