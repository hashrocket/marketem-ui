Feature: Sign in

	Scenario: Sign in displays the campaigns page
		Given I am on the home page
		When I sign in with the correct username and password
		Then I should see "Campaigns"

	Scenario: Failed sign in does not display campaign page
		Given I am on the home page
		When I sign in with the incorrect username and password
		Then I should not see "Campaigns"
