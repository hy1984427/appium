# Generate iOS app for simulator testing

We need go to the iOS project folder, and use Xcode to generate a .app package to be tested by simulator:

<pre><code>cd ~/Documents/appium-master/sample-code/apps/TestApp/
xcodebuild -sdk iphonesimulator6.1
</code></pre>

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/generate_ios_app.png "Generate tested iOS app")
