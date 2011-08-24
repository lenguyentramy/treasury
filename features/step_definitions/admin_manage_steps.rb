When /^I block user "([^"]*)"$/ do |user|
  banner = User.find_by_username(user)
  visit manage_user_banned_path(banner)
  follow_redirect!
end
