# Read about factories at http://github.com/thoughtbot/factory_girl
require "faker"
Factory.define :interaction do |f|
  f.title "MyString"
  f.text "MyString"
end