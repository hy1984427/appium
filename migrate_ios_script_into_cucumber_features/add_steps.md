# Add steps

After features, we need to add the steps to actual execute call the methods.

We just need to create one file `steps.rb` under "step_definitions" folder.

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/ios_cucumber_folder_structure_steps.png "step_definitions")

The content of "steps.rb" should contains following:

<pre><code>Given /^I open "(.*?)" menu$/ do |menu|
	find_element(:name, menu).click
end

When /^I fill "(.*?)" with "(.*?)"$/ do |field, value|
	find_element(:name, field).send_keys value
	find_element(:name, "Done").click
end

And /^I nivigate Back$/ do
	$driver.back
end

Then /^I should see the initial screen$/ do
	find_element(:name, "UICatalog").displayed?.should == true
end

Given /^I open Controls menu$/ do
	find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATableView[1]/UIATableCell[2]/UIAStaticText[1]").click
end

When /^I turn on "(.*?)" switch$/ do |switch|
	@standard_switch = find_element(:name, switch)
	@standard_switch.click
end

Then /^the switch should be turned on$/ do
	@standard_switch.value.should == 1
	screenshot './standard_switch_status.png' # the path here is on your machine
end

When /^I scroll down$/ do
	$driver.execute_script 'mobile: scroll'
end

And /^I increase the "(.*?)"$/ do |increase|
	find_element(:name, increase).click
end
</code></pre>

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/ios_cucumber_steps.png "steps.rb")
