Feature: create position

    Scenario: I can create a new position
      Given Loggin as hr
      When I fill in form and click save
      Then I should see a new position in table
