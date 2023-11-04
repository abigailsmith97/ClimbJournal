import { Application } from "@hotwired/stimulus"
import "@nathanvda/cocoon"
const application = Application.start()
import mapboxgl from 'mapbox-gl';
// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

import 'mapbox-gl/dist/mapbox-gl.css';


