# Navigate back and discard message

What we do next is to navigate back and discard the changes we made to the message.

Firstly, we just use the appium method `driver.back` to navigate back, same as iOS.

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/android_script_navigate_back.png "Navigate back from message content")

And we can also use value to locate the discard "OK" button.

<pre><code>discard = button 'OK'
discard.click
</code></pre>

And we can get this screen in app:

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/android_script_navigate_back_discard_ok.png "Discard the changes to the message")

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
</code></pre>

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/android_script_navigate_back_discard_ok_script.png "android.rb")
