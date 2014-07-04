# Add assertion

In test script, an important stpe is to assert/verify result.

To support assertion, we need to import 'rspec-expectations' on top of our script:

<pre><code>require 'rubygems'
require 'appium_lib'
require 'rspec-expectations'
</code></pre>

And in the steps, we can add an assertion to check the status of "Standard Switch" after turning it on.

<pre><code>standard_switch = find_element(:name, "Standard")
standard_switch.click
standard_switch.value.should == 1
</code></pre>

*Here we also did some small modifications to existing by extract the element.*

And we get the expected value of it from inspector as well:

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/ios_script_assertion.png "Assertion")

Now the script should look like:

<pre><code>require 'rubygems'
require 'appium_lib'
require 'rspec-expectations'

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
standard_switch = find_element(:name, "Standard")
standard_switch.click
standard_switch.value.should == 1
screenshot '/tmp/ios.png' # the path here is on your machine
driver.execute_script 'mobile: scroll'
find_element(:name, "Increment").click
button("Back").click
driver_quit
</code></pre>

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/ios_script_assertion_script.png "ios.rb")

You can refer to the iOS script from [here](https://raw.githubusercontent.com/hy1984427/appium/master/scripts/ios.rb).
