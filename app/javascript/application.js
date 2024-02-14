// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

import { Turbo } from "@hotwired/turbo-rails"
Turbo.session.drive = false
import "controllers"
import { Modal } from "bootstrap"
import Rails from "@rails/ujs"
Rails.start();