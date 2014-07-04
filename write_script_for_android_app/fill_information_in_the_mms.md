# Fill information in the MMS

Now, let's fill the "To" filed and "Message Content".

For those two fields, we don't need any tool to help us to locate them, we can just use their values.

<pre><code>to = find 'To'
to.send_keys 'no one'
message = textfield 'Type message'
message.send_keys 'empty'
</code></pre>

And we can get this screen in app:

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/android_script_fill_message_info.png "Fill message info")

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
</code></pre>

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/android_script_fill_message_info_script.png "android.rb")
