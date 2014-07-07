Feature: Android MMS
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