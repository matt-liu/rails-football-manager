Feature: Transfer player with drag and drop

Background:
	Given I am on the transfer page
	And there is a player named Bob
	And there is a team that does not own that player

Scenario:
	When I drag and drop that player onto that team
	Then that player will be assigned to that team
