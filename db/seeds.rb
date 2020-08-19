# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#AddPictureToBoard.destroy_all


User.destroy_all
Picture.destroy_all
Visionboard.destroy_all



#Users


User.create([
    {
        name: "nyc123"
    },
    {
        name: "usa123"
    }
])
puts "done seeding users"

#Pictures
pic_array = [
  {
    category: "motivational",
    image: "https://images.pexels.com/photos/2561170/pexels-photo-2561170.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
    title: "pic #1",
    description: "description goes here",
    likes: 5

  },
  {
    category: "study",
    image: "https://images.pexels.com/photos/1661837/pexels-photo-1661837.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
    title: "title",
    description: "description goes here",
    likes: 3

  },
  {
    category: "food",
    image: "https://images.pexels.com/photos/4153794/pexels-photo-4153794.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
    title: "title",
    description: "description goes here",
    likes: 9

  },
  {
    category: "study",
    image: "https://images.pexels.com/photos/3897426/pexels-photo-3897426.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
    title: "title",
    description: "description goes here",
    likes: 3
  },

  {
    category: "study",
    image: "https://images.pexels.com/photos/918475/pexels-photo-918475.jpeg?cs=srgb&dl=pexels-oleg-magni-918475.jpg&fm=jpg",
    title: "title",
    description: "description goes here",
    likes: 3

  },
  {
    category: "study",
    image: "https://images.pexels.com/photos/2599108/pexels-photo-2599108.jpeg?cs=srgb&dl=pexels-philip-boakye-2599108.jpg&fm=jpg",
    title: "title",
    description: "description goes here",
    likes: 3

  }
]

Picture.create(pic_array)
puts "done seeding pictures"

Visionboard.create([
    {
        title: "VisionBoard #1",
        photo: [Picture.first, Picture.second],
        user_id: User.first
    }
])
puts "done seeding Visionboards"



#shawn = User.create(name: "Shawn")

#board1 = shawn.VisionBoards.create(title: "i dont even know", photo: "https://images.pexels.com/photos/918475/pexels-photo-918475.jpeg?cs=srgb&dl=pexels-oleg-magni-918475.jpg&fm=jpg", description: "description goes here", author: "me muahahah")

#pic1 = Picture.create(category: "lesiure", image: "https://images.pexels.com/photos/2561170/pexels-photo-2561170.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260", title: "motivational picture", description: "description goes here", likes: 6, visionboard: board1)

#puts "done seeding test data!"