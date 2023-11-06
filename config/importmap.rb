# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "@nathanvda/cocoon", to: "https://ga.jspm.io/npm:@nathanvda/cocoon@1.2.14/cocoon.js"

pin "chartkick", to: "chartkick.js"
pin "Chart.bundle", to: "Chart.bundle.js"


pin "mapbox-gl", to: "mapbox-gl.js", preload: true

# , to: "https://api.mapbox.com/mapbox-gl-js/v2.6.1/mapbox-gl.js"