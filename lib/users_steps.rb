Given /^I am a guest$/ do
  visit destroy_user_session_path
end
When /^I add new User with email "([^"]*)"$/ do |email|
  fill_in "user_username", :with =>"Te Testermann"
  fill_in "user_email", :with => email
  fill_in "user_password", :with=> "password"
  fill_in "user_password_confirmation", :with=>"password"
  click_button "user_submit"
end