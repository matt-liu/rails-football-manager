Feature: Viewer visits the Home Page

Background:
	Given I am on the home page

 Scenario: View home page
	When there is a user named Dan
 	When I click on the Players button
  	Then I should see a list of the players information

 Scenario: Searching for player
 	When I search for a player by their name and number
 	Then I see that player's information displayed