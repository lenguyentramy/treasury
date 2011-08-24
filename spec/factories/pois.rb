require "faker"

Factory.define :poi do |f|
  f.lat             {rand(180)-90+0.345454645}
  f.lng             {rand(360)-180+0.9301112}
  f.interaction_id  {Factory :interaction}
end