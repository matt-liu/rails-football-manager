Feature: User views Directory

Background:
	Given I am on the home page

 Scenario:
 	And there is a player named Dan
 	And there is a coach named Bill
  When I navigate to the Player and Coach directory
  Then I see a list of the players information
  And I see a list of the coaches information
