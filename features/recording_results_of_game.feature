 Feature: Viewer records results of a game

Background:
	Given I am on the games page
	And there is a team named JCs
 	And there is a team named Laterals

Scenario:
  When I click on create game
  And I input the game details
  And I submit the game
  Then I can view the details of the game
