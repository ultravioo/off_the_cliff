import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["button"];

  connect() {
    console.log("hello from card controller");
  }

  cardisappear(event) {
    this.element.classList.add("d-none")
  }
}
