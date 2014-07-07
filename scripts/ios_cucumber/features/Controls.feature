Feature: Contorls
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