# Take screenshot, press Home button and close driver

For many occasions, we need to take screenshot of current screen.

We can use Selenium-WebDriver method `screenshot` to do that:

<pre><code>sleep 10 # to let last step to complete on UI
screenshot '/tmp/android.png' # the path here is on your machine
</code></pre>

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/android_script_screenshot.png "Take screenshot")

And we can sned KeyEvent code to `driver.key_event` to simulate key press.

<pre><code>driver.key_event 3 # 3 is the constant value of KEYCODE_HOME
</code></pre>

*You can find the KEYCODE in the Google Android document: http://developer.android.com/reference/android/view/KeyEvent.html*

And we can get this screen in app:

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/android_script_final.png "Press Home button")

Finally, we need to use `driver_quit` to close the driver and to end the test.

Now the script should look like:

<pre><code>require 'rubygems'
require 'appium_lib'

caps = { caps: { platformName: 'Android', appActivity: 'ui.ConversationList', appPackage: 'com.android.mms' }, appium_lib: { sauce_username: nil, sauce_access_key: nil } }
driver = Appium::Driver.new(caps)
Appium.promote_appium_methods self.class
driver.start_driver.manage.timeouts.implicit_wait = 20 # seconds

mms = find_element id: 'com.android.mms:id/action_compose_new'
mms.click
to = find 'To'
to.send_keys 'no one'
message = textfield 'Type message'
message.send_keys 'empty'
driver.back
discard = button 'OK'
discard.click
sleep 10 # to let last step to complete on UI
screenshot '/tmp/android.png' # the path here is on your machine
driver.key_event 3 # 3 is the constant value of KEYCODE_HOME

driver_quit
</code></pre>

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/andoird_script_final_script.png "android.rb")

Now, we have a successful executed Android script using appium.
