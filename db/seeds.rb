# Create dummy users
user1 = User.create!(name: "Rajat Talesra", email: "rajattalesra4914@gmail.com")
user2 = User.create!(name: "Test2", email: "test2@gmail.com")
user3 = User.create!(name: "Test3", email: "test3@gmail.com")
user4 = User.create!(name: "Test4", email: "test4@gmail.com")
user5 = User.create!(name: "Test5", email: "test5@gmail.com")
user6 = User.create!(name: "Test6", email: "test6@gmail.com")

# Create few hobbies
hobbies_data = ['Walking', 'Swimming', 'Painting', 'Reading', 'Writing', 'Driving', 'Hiking', 'Sketching']
hobbies_data.each do |hobby|
  Hobby.create!(name: hobby)
end

# Connect hobbies to users
6.times do |i|
  user = User.find((i+1))
  UserHobby.create!(user_id: user.id, hobby_id: Hobby.find((i + 1) % 8 + 1).id)
  UserHobby.create!(user_id: user.id, hobby_id: Hobby.find((i + 2) % 8 + 1).id)
  UserHobby.create!(user_id: user.id, hobby_id: Hobby.find((i + 3) % 8 + 1).id)
  UserHobby.create!(user_id: user.id, hobby_id: Hobby.find((i + 4) % 8 + 1).id)
end
