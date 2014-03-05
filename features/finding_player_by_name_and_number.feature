Feature: Viewer selects for player

Background:
	Given I am on the home page

 Scenario: Searching for player
 	When there is a user named Dan
 	When I enter a player's name and number
 	Then I see that player's information displayed


