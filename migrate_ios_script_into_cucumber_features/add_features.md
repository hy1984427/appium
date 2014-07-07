# Add features

Cucumber is focused on the business oriented, so we will create features first.

We will create 2 features under "features" folder, they are "*TextFields.feature*" and "*Controls.feature*".

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/ios_cucumber_folder_structure_features.png "features")

The content of "TextFields.feature" should contains following:

<pre><code>Feature: TextFields
  In order to learn how to test iOS textfields with appium
  As an iOS tester
  I want to perform actions to textfields

  Scenario: Perform actions to textfields
    Given I open "TextFields, Uses of UITextField" menu
    When I fill "Normal" with "something"
    And I fill "Check" with "something else"
    And I nivigate Back
    Then I should see the initial screen
</code></pre>

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/ios_cucumber_textfields_feature.png "TextFields.feature")

The content of "Controls.feature" should contains following:

<pre><code>Feature: Contorls
  In order to learn how to test iOS controls and gestures with appium
  As an iOS tester
  I want to perform actions to controls with gestures

  Scenario: Perform actions to controls with gestures
    Given I open Controls menu
    When I turn on "Standard" switch
    Then the switch should be turned on
    When I scroll down
    And I increase the "Increment"
    And I nivigate Back
    Then I should see the initial screen
</code></pre>

![Alt text](https://raw.githubusercontent.com/hy1984427/appium/master/images/ios_cucumber_controls_feature.png "Controls.feature")
