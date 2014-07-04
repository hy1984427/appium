require 'rubygems'
require 'appium_lib'

APP_PATH = '~/Documents/appium-master/sample-code/examples/ruby/UICatalog.app.zip'

desired_caps = {
  caps:       {
    platformName:  'iOS',
    versionNumber: '7.1',
    app:           APP_PATH,
  },
  appium_lib: {
    sauce_username:   nil, # don't run on Sauce
    sauce_access_key: nil
  }
}

Appium::Driver.new(desired_caps).start_driver
Appium.promote_appium_methods self.class

find_element(:name, "TextFields, Uses of UITextField").click
find_element(:name, "Normal").send_keys "something"
find_element(:name, "Done").click
find_element(:name, "Check").send_keys "something else"
driver.back
find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATableView[1]/UIATableCell[2]/UIAStaticText[1]").click
find_element(:name, "Standard").click
screenshot '/tmp/ios.png' # the path here is on your machine
driver.execute_script 'mobile: scroll'
find_element(:name, "Increment").click
button("Back").click
driver_quit