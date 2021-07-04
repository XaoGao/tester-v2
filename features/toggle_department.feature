Feature: Toggle department

    Scenario: I can change a department status
      Given I logged and exist a active department
      When I click a toggle button in department
      Then I should see lock status in department