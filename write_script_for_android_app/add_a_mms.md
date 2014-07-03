# Add a MMS

We are going to add a test scenario to this script - add a MMS first, then discard it.

So we need to find the adding message icon and click it. We can use `uiautomatorviewer` to get it.

We can get the `resource-id` of the icon, and use it to locate it, then click it.

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/resource_id_of_adding_message_icon_in_uiautomatorviewer.png "get resource-id of adding message icon in uiautomatorviewer")

In the script, we can write following to achieve the goal:

<pre><code>mms = find_element id: 'com.android.mms:id/action_compose_new'
mms.click
</code></pre>

And we can get this screen in app:

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/android_script_add_mms.png "Add MMS")

Now the script should look like:

<pre><code>require 'rubygems'
require 'rspec'
require 'appium_lib'

caps = { caps: { platformName: 'Android', appActivity: 'ui.ConversationList', appPackage: 'com.android.mms' }, appium_lib: { sauce_username: nil, sauce_access_key: nil } }
driver = Appium::Driver.new(caps)
Appium.promote_appium_methods self.class
driver.start_driver.manage.timeouts.implicit_wait = 20 # seconds

mms = find_element id: 'com.android.mms:id/action_compose_new'
mms.click
</code></pre>

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/android_script_add_mms_script.png "android.rb")
