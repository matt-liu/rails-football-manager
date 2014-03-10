Feature: Transferring players to a different team

Background:
	Given there is a player named "Steve" on team named "Chicago Bears"
	And there is a player named "Julie" on team named "Green Bay Packers"
	And I am on the home page

Scenario:
	When I click on the link for "Transfer Players"
	Then I see a list of teams that includes "Chicago Bears"
	Then I see a list of teams that includes "Green Bay Packers"
	Then I see a list of players that includes "Steve"
	Then I see a list of players that includes "Julie"
