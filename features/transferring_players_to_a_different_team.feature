Feature: Transferring players to a different team

Background:
	Given there is a player on team Chicago Bears named Steve
	And there is a player on team Green Bay Packers named Julie
	And I am on the home page

Scenario:
	When I click on the link for "Transfer Players"
	Then I see a list of teams that includes "Chicago Bears"
	Then I see a list of teams that includes "Green Bay Packers"
	Then I see a list of players that includes "Steve"
	Then I see a list of players that includes "Julie"
