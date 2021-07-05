Feature: Update a department

    Scenario: I can update a existing department
      Given I loggin and exit a department
      When I change filed value and submit form for deaprtment
      Then I should see a updated department