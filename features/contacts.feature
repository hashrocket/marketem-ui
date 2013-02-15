Feature: Contacts
	Scenario: User views empty contacts page
		Given I am on the home page
		When I follow "Contacts"
		Then I should see "You don't have any contacts yet."
		Then I should see "Add some contacts now!"
		And the "Contacts" link should be active
