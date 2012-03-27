# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Trolley::Application.initialize!

Time::DATE_FORMATS[:added_time] = "%e %d %B %Y"