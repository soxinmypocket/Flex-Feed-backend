# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AddPictureToBoard.destroy_all
User.destroy_all
Visionboard.destroy_all
Picture.destroy_all

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

#VisionBoard
Visionb
oard.create([
    {
        title: "VisionBoard #1",
        photo: "photo url goes here",
        description: "description",
        author: "visionboard author"
    },
    {
        title: "VisionBoard #2",
        photo: "photo url goes here #2",
        description: "description #2",
        author: "visionboard author #2"
    }
])
puts "done seeding Visionboards"

#Pictures
pic_array = [
  {
    category: "motivational",
    image: "app/assets/beauty_!.jpg",
    title: "pic #1",
    description: "description goes here",
    like: true

  },
  {
    category: "study",
    image: "app/assets/hair_1.jpg",
    title: "title",
    description: "description goes here",
    like: true

  },
  {
    category: "food",
    image: "app/assets/skincare_1.jpg",
    title: "title",
    description: "description goes here",
    like: true

  }]

Picture.create(pic_array)
puts "done seeding pictures"