Feature: Viewing players and coaches by team

Background:
	Given there is a player named "Matt" on team named "TWerkers"
	And I am on the home page

Scenario: Seeing teams on home page
	Then I see a list of teams

Scenario:
	When I click on the link for "TWerkers"
	Then I see "Matt" in a list of players that are on "TWerkers"

Scenario:
	Given there is a player named "Sara" on team named "Non-TWerkers"
	And I am on the home page
	And I click on the link for "Non-TWerkers"
	Then I do not see "Matt" on the page