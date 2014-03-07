Feature: Filters Players By Age

Background:
	Given I am on the Directory

 Scenario: View Directory
 	And there is a user named "Dan"
 	And there is a user named "Matt"
 	And there is a user named "Stephen"
    When I enter minimum age
    Then I see a filtered list of players information
