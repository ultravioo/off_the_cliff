import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["button"];

  connect() {
    console.log(this.buttonTarget);
  }

  menuOnClick(event) {
    document.getElementById("menu-bar").classList.toggle("change");
    document.getElementById("nav").classList.toggle("change");
    document.getElementById("menu-bg").classList.toggle("change-bg");
  }
}
