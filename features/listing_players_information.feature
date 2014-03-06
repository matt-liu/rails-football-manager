Feature: User views Directory

Background:
	Given I am on the home page

 Scenario: View Directory
 	And there is a user named "Dan"
 	And there is a coach named "Bill"
    When I click on the Player and Coach directory
    Then I see a list of the players information
    And I see a list of the coaches information
