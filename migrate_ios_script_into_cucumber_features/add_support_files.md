# Add support files

This is the most unique step in appium Cucumber test comparing to other Cucumber test.

We need to add `env.rb` and `appium.txt` under "support" folder.

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/ios_cucumber_folder_structure_support.png "support")

The content of "env.rb" should contains following:

<pre><code>require 'appium_lib'
require 'rspec/expectations'

desired_caps = Appium.load_appium_txt file: File.expand_path('./', __FILE__), verbose: true
Appium::Driver.new(desired_caps)
Appium.promote_appium_methods self.class

Before { $driver.start_driver }
After { $driver.driver_quit }
</pre></code>

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/ios_cucumber_env.png "env.rb")

The content of "appium.txt" should contains following:

<pre><code>[caps]
platformName = "iOS"
versionNumber = "7.1"
app = "~/Documents/appium-master/sample-code/examples/ruby/UICatalog.app.zip"

[appium_lib]
sauce_username = false
sauce_access_key = false
</pre></code>

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/ios_cucumber_appium_text.png "appium.txt")
