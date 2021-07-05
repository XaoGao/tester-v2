Feature: Update a phone

    Scenario: I can update a existing phone
      Given I loggin and exit a phone
      When I change filed value and submit form for update phone
      Then I should see a updated phone