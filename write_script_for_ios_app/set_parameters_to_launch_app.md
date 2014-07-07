# Set parameters to launch app

To create a script to run iOS test using Ruby, we need to create a script first. Let's call it "*ios.rb*".

In the file, we need to import the libraries at beginning:

<pre><code>require 'rubygems'
require 'appium_lib'
</code></pre>

As we are going to test the app "UICatalog.app.zip" under folder "~/Documents/appium-master/sample-code/examples/ruby", so we need to define the parameters for appium to launch it.

<pre><code>APP_PATH = '~/Documents/appium-master/sample-code/examples/ruby/UICatalog.app.zip'

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
</code></pre>

Next, we need to initial a driver with the parameters we just set, in the Selenium-WebDriver way.

<pre><code>Appium::Driver.new(desired_caps).start_driver
</code></pre>

And we also need to load the appium own methods:

<pre><code>Appium.promote_appium_methods self.class
</code></pre>

After this, the script should looks like following:

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
</code></pre>

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/ios_script_initial.png "ios.rb")

Now, we can run `ruby ios.rb` successfully; the script will launch the app.

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/ios_script_initial_result.png "iOS script with initial parameters result")
