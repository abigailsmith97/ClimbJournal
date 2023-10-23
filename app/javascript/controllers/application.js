import { Application } from "@hotwired/stimulus"
import "@nathanvda/cocoon"
const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
