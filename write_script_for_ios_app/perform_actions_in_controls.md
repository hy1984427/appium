# Perform actions in Controls

Now, we are going to open the "Controls" menu and perform actions in it:

<pre><code>find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATableView[1]/UIATableCell[2]/UIAStaticText[1]").click
</code></pre>

*appium inspector always record the element using XPath in action, but we can use parameters of element in inspector to refactor for better reference. We will use XPath here just for demo.*

And we will see following screen:

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/ios_script_controls.png "Open Controls")

And we can use appium inspector to help us to find the name and other parameters we need for the "Standard Switch".

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/ios_script_controls_standard_switch.png "Use appium inspector to find name of Standard Switch")

With the names, we can locate it and turn on it:

<pre><code>find_element(:name, "Standard").click
</code></pre>

If we run the script, we will see:

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/ios_script_controls_turn_on_standard_switch.png "Turn on standard switch")

We can use Selenium-WebDriver method `screenshot` to help us keep record of current screen: `screenshot '/tmp/ios.png'`.

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/ios_script_screenshot.png "Take screenshot")

There are some gestures we can perform, such as "scroll". Let's practice it with the scenario to scroll down and increase the "UISTEPPER".

We can simply use `driver.execute_script 'mobile: scroll'` to scroll down. The scrren should look like:

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/ios_script_scroll_down.png "Scroll down")

And for the increasement, we can use `find_element(:name, "Increment").click`. The screen should look like:

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/ios_script_increase_uistepper.png "Increase UISTEPPER")

And we can use another way to navigate back: `button("Back").click`.

At last, we can use `driver_quit` to close the driver and to end the test.

Now the script should look like:

<pre><code>require 'rubygems'
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
</code></pre>

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/ios_script_controls_script.png "ios.rb")
