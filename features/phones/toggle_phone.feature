Feature: Toggle a phone

    Scenario: I can change a phone status
      Given I logged and exist a active phone
      When I click a toggle button in phone
      Then I should see lock status in phone