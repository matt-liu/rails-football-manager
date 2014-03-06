Feature: Searching for player

Background:
		Given I am on the home page

 Scenario: Searching for player
 		And there is a user named "Dan"
 		When I search for the name "Dan" and the number "1"
 		Then I see "Dan's" information displayed

 	Scenario: Searching for player with incorrect info
 		And there is a user named "Dan"
		When I enter incorrect information
 		Then I see an error message displayed
