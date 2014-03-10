Feature: Filters Players By Age

Background:
	Given I am on the Players and Coaches Directory

 Scenario: View Directory
 	And there is a player with age 27 and named Dan
 	And there is a player with age 24 and named Matt
 	And there is a player with age 28 and named Stephen
    When I enter minimum age of 25
    Then I see a filtered list of players information
