require 'rubygems'
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
sleep 10 # to let last step to complete on UI
screenshot '/tmp/android.png' # the path here is on your machine
driver.key_event 3 # 3 is the constant value of KEYCODE_HOME

driver_quit