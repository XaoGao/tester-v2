Feature: Destory a position

    Scenario: I can delete a exited position
      Given I logged i see a position
      When I click destory position
      Then I should not see the position