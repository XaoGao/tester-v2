Feature: Toggle position

    Scenario: I can change a position status
      Given I logged and exist a active position
      When I click a toggle button in position
      Then I should see lock status in position