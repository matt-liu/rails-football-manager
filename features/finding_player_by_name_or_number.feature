Feature: Viewer searches for player

Background:
	Given I am on the home page

 Scenario: Searching for player
 	When there is a user named Dan
 	When I search for a player by their name
 	Then I see that player's information displayed