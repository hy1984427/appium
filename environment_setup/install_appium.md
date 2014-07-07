# Install appium

***It's better to install appium through command line, rather than just download appium, since appium GUI app is more fragile.***

***Make sure you have not installed Node or Appium with sudo, otherwise you’ll run into problems***

<pre><code>rvm install ruby         # install ruby and brew
brew install node       # get node.js
npm install -g appium   # get appium
npm install wd          # get appium client
appium                  # start appium to see whether it works
</code></pre>

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/install_ruby_brew.png "Install Ruby and Brew")

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/install_node.png "Install Node")

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/install_appium.png "Install appium")

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/install_appium_client.png "Install appium client")

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/start_appium.png "Start appium")

***To upgrade appium, you just need to run `npm install -g appium` again.***

For **Android**, we also need to install "ant" and "maven":
<pre><code>brew install ant
brew install maven
</code></pre>

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/install_ant.png "Install ant")

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/install_maven.png "Install maven")
