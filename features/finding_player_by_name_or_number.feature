Feature: Viewer searches for player

Background:
	Given I am on the home page

 Scenario: Searching for player
 	And there is a player named Dan
 	When I search for a player by their name
 	Then I see Dan's information displayed

 Scenario: Searching for player
 	And there is a player named Dan
 	When I search for a player by their number
 	Then I see Dan's information displayed

