import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["input", "list", "form"]

  connect() {
    console.log(this.inputTarget)
    console.log(this.listTarget)
    console.log(this.formTarget)
  }

  update() {
    const url = `${this.formTarget.action}?query=${this.inputTarget.value}`
    console.log(url);
    fetch(url, { headers: { "Accept": "text/plain" } })
      .then(response => response.text())
      .then((data) => {
        this.listTarget.innerHTML = data
      })
  }
}
