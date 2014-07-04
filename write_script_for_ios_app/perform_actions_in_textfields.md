# Perform actions in TextFields

After open the initial screen of app, we are going to perform some actions to TextFields.

Let's start with open the "TextFields" menu:

<pre><code>find_element(:name, "TextFields, Uses of UITextField").click
</code></pre>

And we will see following screen:

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/ios_script_textfield.png "Open TextFields")

And we can use appium inspector to help us to find the name and other parameters we need for the "UITEXTFIELD" and "UITEXTFIELD (WITH LEFTVIEW)".

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/ios_script_textfield_inspector_uitextfield.png "Use appium inspector to find name of UITEXTFIELD")

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/ios_script_textfield_inspector_uitextfield_with_leftview.png "Use appium inspector to find name of UITEXTFIELD (WITH LEFTVIEW)")

With the names, we can locate them and fill some texts into them:

<pre><code>find_element(:name, "Normal").send_keys "something"
find_element(:name, "Done").click
find_element(:name, "Check").send_keys "something else"
</code></pre>

If we run the script, we will see:

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/ios_script_textfield_fill_texts.png "Fill texts into textfields")

Since we are going to add more steps, we need to navigate back, we can use appium method `driver.back` to navigate back.

<pre><code>driver.back
</code></pre>

And we will see the initial app screen again:

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/ios_script_initial_result.png "iOS initial screen")

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
</code></pre>

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/ios_script_textfield_script.png "ios.rb")
