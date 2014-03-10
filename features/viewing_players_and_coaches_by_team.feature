Feature: Viewing players and coaches by team

Background:
	Given there is a player named "Matt" on team named "BC Lions"
	And I am on the home page

Scenario: Seeing teams on home page
	Then I see a list of teams that includes "BC Lions"

Scenario:
	When I click on the link for "BC Lions"
	Then I see "Matt" in a list of players that are on "BC Lions"

Scenario:
	Given there is a player named "Amber" on team named "Toronto Argonauts"
	And I am on the home page
	And I click on the link for "Toronto Argonauts"
	Then I do not see "Matt" on the page