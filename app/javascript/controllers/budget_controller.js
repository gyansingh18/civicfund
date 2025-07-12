import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["input", "total", "remaining"]

  update() {
    const total = this.inputTargets.reduce((sum, input) => {
      return sum + (parseInt(input.value) || 0)
    }, 0)

    this.totalTarget.textContent = `$${total}`
    this.remainingTarget.textContent = `$${1000 - total}`
  }
}
