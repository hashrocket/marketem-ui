Feature: Contacts
	Scenario: User views empty contacts page
		Given I am on the home page
		When I follow "Contacts"
		Then I should see "You don't have any contacts yet."
		Then I should see "Add some contacts now!"
		And the "Contacts" link should be active

	Scenario: User creates new contact
		Given I am on the contacts page
		When I follow "Add a Contact"
		And I create a new contact
		Then I should be on the contacts page
		And I should see "Yay! You've created a contact! I'm so happy for you!"
		And I should see the new contact in the list
