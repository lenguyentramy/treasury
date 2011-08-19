Feature: Admin
	As an Admin I want to manage everythings
	
	Background:	existing user
		Given there is a user (admin)
		Given there is a user (user)
		Given there is a user (banner)
		Given I am logged in as "admin@example.com"

	Scenario: Manage Users
	When I go to the manage users page
	And I should see the edit manage users link
	And I should see the edit manage users link
	And I should see the edit manage users link
