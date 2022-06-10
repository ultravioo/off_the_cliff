import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["fontawesome"]

	onClick() {
    console.log(this)
		this.element.classList.add("filledhearth");
	}
}
