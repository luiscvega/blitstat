Factory.define :user do |user|
  user.email                 "luiscvega@gmail.com"
  user.password              "foobar" 
  user.password_confirmation "foobar"
end

Factory.define :poll do |poll|
  poll.title  "Mac or PC"
end

Factory.define :choice do |choice|
  choice.choice  "Mac"
end

