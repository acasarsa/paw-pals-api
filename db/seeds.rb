# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'
require 'json'



User.destroy_all
puts ".... destroying users"
Dog.destroy_all
puts "... destorying dogs"
DogUserPair.destroy_all
puts "... destroying friendships"
MeetUp.destroy_all
puts "...destroying meet-ups"

# rm = RestClient.get 
# var myHeaders = new Headers();
# myHeaders.append("Content-Type", "application/json");
# myHeaders.append("x-api-key", "7a0562dd-e88b-4108-9081-868896d0f864");

# var requestOptions = {
#     method: 'GET',
#     headers: myHeaders,
#     redirect: 'follow'
# };

# fetch("https://api.thedogapi.com/v1/favourites", requestOptions)
#     .then(response => response.text())
#     .then(result => console.log(result))
#     .catch(error => console.log('error', error));

dog_images = [
    "https://cdn2.thedogapi.com/images/ByUgoQiE7.gif", 
    "https://cdn2.thedogapi.com/images/r156pDT4m.gif", 
    "https://cdn2.thedogapi.com/images/rJifQpT4m.gif", 
    "https://cdn2.thedogapi.com/images/42QrDrylc.jpg", 
    "https://cdn2.thedogapi.com/images/S10gmTTVQ.gif", 
    "https://cdn2.thedogapi.com/images/rk9k4aTNm.gif", 
    "https://cdn2.thedogapi.com/images/r14eVa6EX.gif", 
    "https://cdn2.thedogapi.com/images/BJUum6T4X.gif", 
    "https://cdn2.thedogapi.com/images/H1iHQpaVX.gif", 
    "https://cdn2.thedogapi.com/images/rkq57TpVm.gif", 
    "https://cdn2.thedogapi.com/images/Bkf4Ea6NX.gif", 
    "https://cdn2.thedogapi.com/images/HkD1LppV7.gif"
]



12.times do 
    Dog.create!(name: Faker::Creature::Dog.meme_phrase.titleize, breed: Faker::Creature::Dog.breed, tagline: Faker::Creature::Dog.sound, age: Faker::Creature::Dog.age, 
    gender: Faker::Creature::Dog.gender, size: Faker::Creature::Dog.size, image: dog_images.pop(), description: Faker::Lorem.paragraphs(number: 2))
end

6.times do
    User.create!(username: Faker::JapaneseMedia::DragonBall.character, password: 123)
end

6.times do
    DogUserPair.create!(user: User.all.sample, dog: Dog.all.sample)
end



puts "...done seeding"




# 7a0562dd-e88b-4108-9081-868896d0f864
