#Selenium::WebDriver::Firefox::Binary.path = "/Applications/FirefoxDeveloperEdition.app/Contents/MacOS/firefox-bin"

require 'capybara'
require 'capybara/poltergeist'
Capybara.javascript_driver = :poltergeist

options = {js_errors: false}
Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, options)
end

# Capybara.register_driver :selenium do |app|
#   Capybara::Selenium::Driver.new(app, :browser => :chrome)
# end