# Install Android SDK

To test Android apps, we need to install Android SDK.

We need to setup some system variables, through editing ~/.bash_profile as following:

<pre><code>export ANDROID_HOME=/Applications/adt-bundle-mac/sdk
PATH=$PATH:$ANDROID_HOME:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
</code></pre>

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/android_sdk_path.png "Android SDK PATH")

And we also need to add necessary APIs of Android in "Android SDK manager".

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/android_sdk.png "Android SDK")

We also should add AVDs we want to use.

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/avd.png "AVD")

Make sure that `hw.battery=yes` in your AVD’s config.ini

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/avd_config.png "AVD config")
