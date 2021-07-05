Feature: Destory a department

    Scenario: I can delete a exited department
      Given I logged i see a department
      When I click destory department
      Then I should not see the department