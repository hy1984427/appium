# Run Android samples

First, we need to start our avd, so that appium can connect to it and run test afterwards.

`emulator -avd nexus5` # nexus5 is the avd name, which we input when creating avd

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/start_avd.png "Start AVD")

You can use `adb devices` to check the Android emulator or device is connected.

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/adb_devices.png "adb devices")

Now we can run the sample test "xunit_android.rb" to see how appium works:

***Please make sure the appium is running at background.***

<pre><code>cd ~/Documents/appium-master/sample-code/examples/ruby
ruby xunit_android.rb
</code></pre>

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/android_xunit_android_result.png "Android xunit_android.rb result")
