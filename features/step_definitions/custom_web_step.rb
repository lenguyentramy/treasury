Then /^(?:|I )should(| not) see (a|an|the) (.+) link$/ do |no, a, link|
  no == '' ? (page.should have_xpath(link_to(link)) ) : (page.should_not have_xpath(link_to(link)) )
end

When /^I login with my account "([^"]*)"$/ do |email|
  fill_in "user_email", :with => email
  fill_in "user_password", :with=> "password"
  click_button "user_submit"
end

Given /^I am logged in as "([^"]*)"$/ do |email|
  @current_user = User.find_by_email!(email)
  Given %{I am on the sign in page}
  When %{I fill in "user_email" with "#{email}"}
  When %{I fill in "user_password" with "password"}
  When %{I press "user_submit"}
end