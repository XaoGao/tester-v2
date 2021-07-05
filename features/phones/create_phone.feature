Feature: Create a phone

    Scenario: I can create a new phone
      Given Logged as hr and visit phones index
      When I fill in a new phone form and click save
      Then I should see a new phone in table
