import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["button"];

  connect() {
    console.log(this.buttonTarget);
  }

  backgroundNav(event) {
    if (this.buttonTarget.checked === true) {
      this.element.classList.add("bg-white");
    } else {
      this.element.classList.remove("bg-white");
    }
  }
}
