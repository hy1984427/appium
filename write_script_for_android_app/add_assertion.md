# Add assertion

In test script, an important stpe is to assert/verify result.

To support assertion, we need to import 'rspec-expectations' on top of our script:

<pre><code>require 'rubygems'
require 'appium_lib'
require 'rspec-expectations'
</code></pre>

And in the steps, we can add an assertion to check the message shown on center after discarding message.

<pre><code>content = find_element id: 'com.android.mms:id/empty'
content.text.should == "No conversations."
</code></pre>

Now the script should look like:

<pre><code>require 'rubygems'
require 'appium_lib'
require 'rspec-expectations'

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
content = find_element id: 'com.android.mms:id/empty'
content.text.should == "No conversations."
sleep 10 # to let last step to complete on UI
screenshot '/tmp/android.png' # the path here is on your machine
driver.key_event 3 # 3 is the constant value of KEYCODE_HOME

driver_quit
</code></pre>

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/android_script_assertion_script.png "android.rb")

You can refer to the Android script from [here](https://github.com/hy1984427/appium/blob/master/scripts/android.rb).

We will migrate this script to Cucumber feature in next chapter.
