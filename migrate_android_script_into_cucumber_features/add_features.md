# Add features

Cucumber is focused on the business oriented, so we will create features first.

We will create feature `mms.feature` under "features" folder.

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/android_cucumber_folder_structure_features.png "features")

The content of "mms.feature" should contains following:

<pre><code>Feature: Android MMS
  In order to discard unuseful MMS
  As a user
  I want to draft a MMS and discard it

  Scenario: Discard a MMS
    Given I compose a new MMS
    And I fill "To" with "no one"
    And I fill "Type message" with "empty"
    When I navigate Back
    And I discard the changes
    Then the message should be discarded
</code></pre>

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/android_cucumber_mms_feature.png "mms.feature")
