# coding: utf-8
# Read about factories at http://github.com/thoughtbot/factory_girl
require "faker"

Factory.define :user do |f|
  f.email "user@example.com"
  f.username "User"
  f.password "password"
  f.password_confirmation "password"
  f.admin false
end

Factory.define :admin, :parent=>:user do |f|
  f.username "Admin"
  f.email "admin@example.com"
  f.admin true
end

Factory.define :banner, :parent=>:user do |f|
  f.email "banner@example.com"
  f.blocked true
end