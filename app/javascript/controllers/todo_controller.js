import ApplicationController from "./application_controller";
import StimulusReflex from 'stimulus_reflex';

export default class extends ApplicationController {
  connect() {
    StimulusReflex.register(this)
  }

  // create(event) {
  //   console.log(event);
  //   event.preventDefault();
  // }
}