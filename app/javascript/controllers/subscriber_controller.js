import { Controller } from "stimulus"

export default class extends Controller {
  removeSubscriber() {
    const subscriber = document.querySelector('#subscriber');
    const jobsRoster = document.querySelector('#job-roster');
    subscriber.classList.add('hidden');
    jobsRoster.classList.toggle('md:grid-cols-2');
  }
}
