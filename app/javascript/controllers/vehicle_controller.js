import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log('Connected to JS Controller')
  }

  initialize() {
    this.element.setAttribute("data-action","change->vehicle#loadMakeModels")
  }
  loadMakeModels() {
    const selectedMake = this.element.options[this.element.selectedIndex].value
    console.log(selectedMake);
    this.url = `/vehicle_makes/fetch_make_models?vehicle_make=${selectedMake}`
    fetch(this.url, {
      headers: {
        Accept: "text/vnd.turbo-stream.html"
      }
    })
    .then(response => response.text())
    .then(html => Turbo.renderStreamMessage(html))
  }
}
