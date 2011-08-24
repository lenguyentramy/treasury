module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /^the home\s?page$/
      '/'
      when /^the sign up\s?page$/
        new_user_registration_path
      when /^the sign in\s?page$/
        new_user_session_path  
      when /^"([^"]*)" profile page$/i
        user_path(User.find_by_email($1))
      when /^the manage users\s?page$/
        manage_users_path
      when /^the edit manage user "([^"]*)"\s?page$/
        edit_manage_user_path(User.find_by_username($1))
      when /^the banned manage user "([^"]*)"\s?page$/
        manage_user_banned_path(User.find_by_username($1))  
      when /^the manage pois\s?page$/
        manage_pois_path      
      when /^the poi with lat ([0-9]+)\s?page$/
        poi_path(Poi.find_by_lat($1)) 
      when /^the pois\s?page$/
        pois_path  
    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
