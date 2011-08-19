Feature: Users
	As a Guest I want to sign up an account
	And then login with my account to play the game
	
	Background:	existing user
		Given there is a user (admin)
		Given there is a user (user)
		Given there is a user (banner)
		
		
	Scenario: Sign up
	Given I am a guest
	When I go to the sign up page
	And I add new User with email "test@exp.com"
	Then I should be on "test@exp.com" profile page
	And I should see "Te Testermann"
	And I should see "test@exp.com"
	And I should see "Summe: 0 points"
	
	Scenario: Sign in as user
	When I go to the sign in page
	And I login with my account "user@example.com"
	Then I should be on "user@example.com" profile page
	And I should see "user@example.com"
	And I should not see the manage users link
	And I should not see the manage pois link
	
	Scenario: Sign in as admin
	When I go to the sign in page
	And I login with my account "admin@example.com"
	Then I should be on "admin@example.com" profile page
	And I should see "admin@example.com"
	And I should see the manage users link
	And I should see the manage pois link
	
	Scenario: Sign in as banner
	When I go to the sign in page
	And I login with my account "banner@example.com"
	Then I should be on the home page
	And I should see "Bye"