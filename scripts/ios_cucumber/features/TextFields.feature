Feature: TextFields
  In order to learn how to test iOS textfields with appium
  As an iOS tester
  I want to perform actions to textfields

  Scenario: Perform actions to textfields
    Given I open "TextFields, Uses of UITextField" menu
    When I fill "Normal" with "something"
    And I fill "Check" with "something else"
    And I nivigate Back
    Then I should see the initial screen