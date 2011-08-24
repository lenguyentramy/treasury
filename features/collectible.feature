Feature: Collectible
	In order to collect a poi
	As a user
	I want to collect a poi
	
	Background: Existing user and poi
		Given there is a user (user)
		Given there is a interaction (interaction)
		Given a poi with lat 1 and with interaction
		Given I am logged in as "user@example.com"
		
	Scenario: collect Poi
	When I go to the poi with lat 1 page
	And I should see "Hallo"
	Then I press "poi_submit"
	And I should be on the poi with lat 1 page
	And I should see the pois link
	And I should not see "poi_submit"