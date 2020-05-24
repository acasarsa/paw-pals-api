# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'
require 'json'


Dog.destroy_all
puts "... destorying dogs"
Event.destroy_all
puts "...destroying events"
Follow.destroy_all
puts "... destroying follows"
Attendee.destroy_all
puts "...destroying attendees"



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
    "https://cdn2.thedogapi.com/images/SJY6N6aVQ.gif", 
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
    Dog.create!(
        name: Faker::Creature::Dog.name, 
        breed: Faker::Creature::Dog.breed, 
        status: Faker::Creature::Dog.sound, 
        age: Faker::Creature::Dog.age, 
        gender: Faker::Creature::Dog.gender, 
        size: Faker::Creature::Dog.size, 
        image: dog_images.pop(), 
        description: Faker::Creature::Dog.meme_phrase,
        favorite_toy: "stuffed" + " " + Faker::Creature::Animal.name,
        human: Faker::Name.first_name,
        username: Faker::Superhero.name.downcase,
        password: '123'
    )
end

# t.string :name
# t.string :breed
# t.text :status
# t.string :age
# t.string :gender
# t.string :size
# t.string :image
# t.text :description
# t.text :favorite_toy
# t.string :human
# t.string :username
# t.string :password



    e1 = Event.create!(
        title: "Park Party!!",
        date: Date.new(2020,05,28),
        description: "Come play!! You can chase me! If you catch me I'll tell you where I burried the bone!",
        image: 'https://i.ibb.co/Gc8R0t1/txhh-best-practices-when-taking-dog-park.png'
    )
    e2 = Event.create!(
        title: "Pool Party!",
        date: Date.new(20,07,04),
        description: "hooman haz lotz of snakz",
        image: 'https://i.ibb.co/tq5TVmG/pool-doggo.jpg'
        # image: '../public/images/park-dogs.png'
    )


    follow0 = Follow.create!(follower: Dog.first, followee: Dog.second)
    follow1 = Follow.create!(follower: Dog.second, followee: Dog.first)
    follow2 = Follow.create!(follower: Dog.third, followee: Dog.second )
    follow3 = Follow.create!(follower: Dog.fourth, followee: Dog.second)
    follow4 = Follow.create!(follower: Dog.fifth, followee: Dog.second)
    follow5 = Follow.create!(follower: Dog.fourth, followee: Dog.first)

    # follow0 = Follow.create!(follower_id: Dog.first.id, followee_id: Dog.second.id)
    # follow1 = Follow.create!(follower_id: Dog.second.id, followee_id: Dog.first.id)
    # follow2 = Follow.create!(follower_id: Dog.first.id, followee_id: Dog.third.id )
    # follow3 = Follow.create!(follower_id: Dog.last.id, followee_id: Dog.fifth.id)
    # follow4 = Follow.create!(follower_id: Dog.fifth.id, followee_id: Dog.fourth.id)
    # follow5 = Follow.create!(follower_id: Dog.fourth.id, followee_id: Dog.fifth.id)

    a1 = Attendee.create!(dog: Dog.first, event: Event.first)
    a2 = Attendee.create!(dog: Dog.first, event: Event.last)
    a3 = Attendee.create!(dog: Dog.second, event: Event.first)
    a4 = Attendee.create!(dog: Dog.last, event: Event.last)
    a5 = Attendee.create!(dog: Dog.last, event: Event.first)
    a6 = Attendee.create!(dog: Dog.third, event: Event.first)
    a7 = Attendee.create!(dog: Dog.fourth, event: Event.first)
    a8 = Attendee.create!(dog: Dog.fifth, event: Event.last)
    a9 = Attendee.create!(dog: Dog.fourth, event: Event.last)

# Faker::Books::Lovecraft.sentence - maybe for description
# Faker::JapaneseMedia::SwordArtOnline.item for favorite_toy
# Faker::Appliance.equipment ^
# Faker::Games::Zelda.item ^
# Faker::Games::Dota.item ^

# t.string :name
# t.string :breed
# t.text :status
# t.string :age
# t.string :gender
# t.string :size
# t.string :image
# t.text :description
# t.text :favorite_toy
# t.string :human
# t.string :username
# t.string :password

# 6.times do
#     DogUserPair.create!(user: User.all.sample, dog: Dog.all.sample)
# end

# meetup1 = MeetUp.create(first_dog_user_pair_id: DogUserPair.first.id,  second_dog_user_pair_id: DogUserPair.last.id, date: Date.parse("05/30/2020"))
# meetup2 = MeetUp.create(first_dog_user_pair_id: DogUserPair.first.id,  second_dog_user_pair_id: DogUserPair.second.id, date: Date.parse("05/24/2020"))
# meetup3 = MeetUp.create(first_dog_user_pair_id: DogUserPair.last.id,  second_dog_user_pair_id: DogUserPair.last.id, date: Date.parse("05/23/2020"))
# meetup4 = MeetUp.create(first_dog_user_pair_id: DogUserPair.second.id,  second_dog_user_pair_id: DogUserPair.first.id, date: Date.parse("06/01/2020"))
# meetup5 = MeetUp.create(first_dog_user_pair_id: DogUserPair.fifth.id,  second_dog_user_pair_id: DogUserPair.fifth.id, date: Date.parse("05/28/2020"))
# meetup6 = MeetUp.create(first_dog_user_pair_id: DogUserPair.fourth.id,  second_dog_user_pair_id: DogUserPair.last.id, date: Date.parse("05/27/2020"))



puts "...done seeding"




# 7a0562dd-e88b-4108-9081-868896d0f864
