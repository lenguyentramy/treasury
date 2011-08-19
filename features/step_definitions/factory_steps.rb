# The following will call Movie.make, Factory.create(:movie), Movie.create! or Movie.new, depending on what’s available:
# 
#     Given there is a movie
#
# To create a new record with attributes set, you can say:
# 
#     Given there is a movie with the title "Sunshine" and the year "2007"
#
# The following will also store the created record in @sunshine:
# 
#     Given "Sunshine" is a movie with the title "Sunshine" and the year "2007"
#
# To set associations you can refer to other records by name:
# 
#     Given "Before Sunrise" is a movie
#     And "Before Sunset" is a movie with the prequel "Before Sunrise"
#
# You can also refer to the last created object of a kind by saying "above":
# 
#     Given there is a movie with the title "Before Sunrise"
#     And "Before Sunset" is a movie with the prequel above
#
# Boolean attributes can be set by appending "which", "that" or "who" at the end:
# 
#     Given there is a movie which is awesome
#     And there is a movie with the name "Sunshine" that is not a comedy
#     And there is a director who is popular
#
# Instead of "and" you can also use "but" and commas to join sentences:
# 
#     Given there is a movie which is awesome, popular and successful but not science fiction
#     And there is a director with the income "500000" but with the account balance "-30000"
    
Cucumber::Factory.add_steps(self)