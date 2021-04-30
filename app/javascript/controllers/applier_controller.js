import { Controller } from "stimulus"

export default class extends Controller {
  applyToJob() {
    const applier = document.querySelector('#apply-btn');
    console.log(applier);
  }
}
