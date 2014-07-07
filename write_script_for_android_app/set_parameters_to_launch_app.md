# Set parameters to launch app

To create a script to run Android test using Ruby, we need to create a script first. Let's call it "*android.rb*".

In the file, we need to import the libraries at beginning:

<pre><code>require 'rubygems'
require 'appium_lib'
</code></pre>

As we are going to test the system app "Messaging", so we need to define the parameters for appium to launch it.

<pre><code>caps = { caps: { platformName: 'Android', appActivity: 'ui.ConversationList', appPackage: 'com.android.mms' }, appium_lib: { sauce_username: nil, sauce_access_key: nil } }
</code></pre>

You can see we defined the "*appActivity*" and "*appPackage*", so we need to find them first.

We can use "*hierarchyviewer*" to easily find them:

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/android_hierarchyviewer.png "hierarchyviewer to find appPackage and appActivity")

*uiautomatorviewer can also find the "appPackage", but not "appActivity".*

*To test your Android app, you can use `adb install path_to_your_app.apk` to install it first, after the Android device is connected.*

Next, we need to initial a driver with the parameters we just set, in the Selenium-WebDriver way.

<pre><code>driver = Appium::Driver.new(caps)
</code></pre>

And we also need to load the appium own methods, and set timeouts to avoid the driver close too soon:

<pre><code>Appium.promote_appium_methods self.class
driver.start_driver.manage.timeouts.implicit_wait = 20 # seconds
</code></pre>

After this, the script should looks like following:

<pre><code>require 'rubygems'
require 'appium_lib'

caps = { caps: { platformName: 'Android', appActivity: 'ui.ConversationList', appPackage: 'com.android.mms' }, appium_lib: { sauce_username: nil, sauce_access_key: nil } }
driver = Appium::Driver.new(caps)
Appium.promote_appium_methods self.class
driver.start_driver.manage.timeouts.implicit_wait = 20 # seconds
</code></pre>

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/android_script_initial.png "android.rb")

Now, we can run `ruby android.rb` successfully; the script will launch the app.

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/android_script_initial_result.png "android script with initial parameters result")
