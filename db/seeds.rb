require 'rest-client'
require 'json'

Dog.destroy_all
puts "... destorying dogs"
Event.destroy_all
puts "...destroying events"
Attendee.destroy_all
puts "...destroying attendees"


# used DogAPI to fill db with selected gif's because they were more stable than ones we found ourselves. Due to repeat images and poor quality images we opted to select them ourselves after useing PostMan to navigate the API. 

dog_images = [
    "https://cdn2.thedogapi.com/images/rkq57TpVm.gif",
    "https://cdn2.thedogapi.com/images/ByUgoQiE7.gif",
    "https://cdn2.thedogapi.com/images/Bkf4Ea6NX.gif", 
    "https://cdn2.thedogapi.com/images/B1fG6PT4Q.gif",
    "https://cdn2.thedogapi.com/images/S10gmTTVQ.gif", 
    "https://cdn2.thedogapi.com/images/rk9k4aTNm.gif", 
    "https://cdn2.thedogapi.com/images/Bk4phvp47.gif",
    "https://cdn2.thedogapi.com/images/SJJtcXs4m.gif",
    "https://cdn2.thedogapi.com/images/r14eVa6EX.gif", 
    "https://cdn2.thedogapi.com/images/r13yimo4Q.gif",
    "https://cdn2.thedogapi.com/images/rJifQpT4m.gif", 
    "https://cdn2.thedogapi.com/images/SJY6N6aVQ.gif",
    "https://cdn2.thedogapi.com/images/HJ1297iE7.gif",
    "https://cdn2.thedogapi.com/images/H1iHQpaVX.gif",
    "https://cdn2.thedogapi.com/images/BJUum6T4X.gif", 
    "https://cdn2.thedogapi.com/images/r156pDT4m.gif", 
    
]

user = [
    "user1", "user2", "user3", "user4", "user5", "user6", "user7", "user8", "user9", "user10", "user11", "user12", "user13", "user14", "user15", "user16"
]

16.times do 
    Dog.create!(
        name: Faker::Creature::Dog.name.titleize, 
        breed: Faker::Creature::Dog.breed, 
        status: Faker::Creature::Dog.sound.titleize, 
        age: Faker::Creature::Dog.age.titleize, 
        gender: Faker::Creature::Dog.gender, 
        size: Faker::Creature::Dog.size.titleize, 
        image: dog_images.pop(), 
        description: Faker::Creature::Dog.meme_phrase.titleize,
        favorite_toy: "Stuffed" + " " + Faker::Creature::Animal.name.titleize,
        human: Faker::Name.first_name.titleize,
        username: user.shift(), 
        password: '123'
    )
end

    e1 = Event.create!(
        title: "Park Party!!",
        date: Date.new(2020,05,28),
        description: "Come play!! You can chase me! If you catch me I'll tell you where I burried the bone!",
        image: 'https://i.ibb.co/Gc8R0t1/txhh-best-practices-when-taking-dog-park.png'
    )
    e2 = Event.create!(
        title: "Dance PARTY With Snoop and Lil BowWow",
        date: Date.new(2020,06,04),
        description: "Throw back Jamz All Day! Unrestricted access to the yard. There will be a contest for deepest hole.",
        image: 'https://external-preview.redd.it/SXQd2ePRhUpm-T-6utiUsa_-wSuez9aD2vfiZKUbc-s.jpg?auto=webp&s=abc72eddc7f3b1dfb4f795753675e215c6db2754'

    )
    e3 = Event.create!(
        title: "Pool Party!",
        date: Date.new(2020,07,04),
        description: "hooman haz lotz of snakz",
        image: 'https://i.ibb.co/tq5TVmG/pool-doggo.jpg'
    )

    a1 = Attendee.create!(dog: Dog.first, event: Event.first)
    a2 = Attendee.create!(dog: Dog.first, event: Event.last)
    a3 = Attendee.create!(dog: Dog.second, event: Event.first)
    a4 = Attendee.create!(dog: Dog.last, event: Event.last)
    a5 = Attendee.create!(dog: Dog.last, event: Event.first)
    a6 = Attendee.create!(dog: Dog.third, event: Event.first)
    a7 = Attendee.create!(dog: Dog.fourth, event: Event.first)
    a8 = Attendee.create!(dog: Dog.fifth, event: Event.last)
    a9 = Attendee.create!(dog: Dog.fourth, event: Event.last)
    a10 = Attendee.create!(dog: Dog.last, event: Event.second)
    a11 = Attendee.create!(dog: Dog.fourth, event: Event.second)
    a12 = Attendee.create!(dog: Dog.first, event: Event.second)
    a13 = Attendee.create!(dog: Dog.second, event: Event.second)

puts "...done seeding"
