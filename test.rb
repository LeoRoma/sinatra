require 'capybara/dsl'
require 'selenium-webdriver'

include Capybara::DSL
Capybara.default_driver = :selenium
visit 'http://capybaraworkout.herokuapp.com/'
click_link 'Start Workout!'
click_button 'Click me!'
