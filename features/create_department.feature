Feature: Create position

    Scenario: I can create a new department
      Given Loggin as hr and visist a new department path
      When I fill in a new department form and click save
      Then I should see a new department in table
