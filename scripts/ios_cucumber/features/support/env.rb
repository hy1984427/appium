require 'appium_lib'
require 'rspec/expectations'

desired_caps = Appium.load_appium_txt file: File.expand_path('./', __FILE__), verbose: true
Appium::Driver.new(desired_caps)
Appium.promote_appium_methods self.class

Before { $driver.start_driver }
After { $driver.driver_quit }