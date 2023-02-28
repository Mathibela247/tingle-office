// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "./controllers/application"
import "@hotwired/turbo-rails"
import "@hotwired/stimulus"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

// This is the line we're adding
import "stylesheets/application"

Rails.start()
ActiveStorage.start()

import "controllers"
