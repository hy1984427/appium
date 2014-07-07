Given /^I open "(.*?)" menu$/ do |menu|
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