Feature: Destory a phone

    Scenario: I can delete a exited phone
      Given I logged i see a phone
      When I click destory phone
      Then I should not see the phone