Given /^I compose a new MMS$/ do
	mms = find_element id: 'com.android.mms:id/action_compose_new'
	mms.click
end

And /^I fill "(.*?)" with "(.*?)"$/ do |field, value|
	element = find field
	element.send_keys value
end

When /^I navigate Back$/ do
	$driver.back
end

And /^I discard the changes$/ do
	discard = button 'OK'
	discard.click
end

Then /^the message should be discarded$/ do
	content = find_element id: 'com.android.mms:id/empty'
	content.text.should == "No conversations."
	screenshot './message_disacrd.png' # the path here is on your machine
end