Feature: Update a position

    Scenario: I can update a existing position
      Given I loggin and exit a position
      When I change filed value and submit form
      Then I should see a updated position