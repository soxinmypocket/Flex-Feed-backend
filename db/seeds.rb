# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Comment.destroy_all
Comment.destroy_all
AddPictureToBoard.destroy_all
User.destroy_all
Picture.destroy_all
Visionboard.destroy_all




#Users
User.create([
    {
        name: "nyc123"
    }
])
puts "done seeding users"

#Pictures
pic_array = [
  {
    category: "Beauty",
    image: "https://images.pexels.com/photos/2561170/pexels-photo-2561170.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
    title: "Discover Women's Hairstyles For Curly Long Hair",
    description: "Curly long hair is always the on- trend hairstyle because it is much more outstanding and eye- catching than common straight or wavy styles.",
    likes: 189

  },
  {
    category: "Beauty",
    image: "https://images.pexels.com/photos/1661837/pexels-photo-1661837.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
    title: "Spilling The Tea On The Popular Spring Twists Protective Style",
    description: "Passion twists 😍 Love ",
    likes: 3597

  },
  {
    category: "Beauty",
    image: "https://images.pexels.com/photos/4153794/pexels-photo-4153794.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
    title: "Water Wave Curls",
    description: "Adorable brown hair color for medium length hair",
    likes: 952

  },
  {
    category: "Beauty",
    image: "https://images.pexels.com/photos/3897426/pexels-photo-3897426.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
    title: "Trendy Box Braids ",
    description: "Gone are the days when everyone's braids looks the same. Nowadays, there are so many varieties of box braids popping up all over the place, it's almost hard to keep up. ",
    likes: 789
  },

  {
    category: "Lifestyle",
    image: "https://images.pexels.com/photos/4132359/pexels-photo-4132359.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
    title: "26 Things People Who Nap 'Too Much' Wish Others Understood",
    description: "Mental Illness and Chronic Illness: When You Nap ‘Too Much’ | The Mighty #mentalhealth #chronicillness",
    likes: 355

  },
  {
    category: "Home",
    image: "https://images.pexels.com/photos/930004/pexels-photo-930004.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
    title: "Comfy Corner",
    description: "The most amazing place to read a book!",
    likes: 378

  },
  {
    category: "Motivational",
    image: "https://images.pexels.com/photos/1485548/pexels-photo-1485548.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
    title: "You are beautiful 🤗",
    description: "#post#it#note #YouAreBeautiful ",
    likes: 789
  },

  {
    category: "Motivational",
    image: "https://images.pexels.com/photos/2401863/pexels-photo-2401863.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
    title: "You are worth of love",
    description: "West Elm 'You are worthy of love' art decor",
    likes: 995

  },
  {
    category: "Beauty",
    image: "https://images.pexels.com/photos/3751770/pexels-photo-3751770.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    title: "Modern Chic",
    description: "Classic lookbook for Fall 2020",
    likes: 378

  }
]

Picture.create(pic_array)
puts "done seeding pictures"


Comment.create([
  {content: "Wow, your hair looks amazing!", picture: Picture.first},
  {content: "YASSSS. Your twists are on point!!", picture: Picture.second},
  {content: "I love this style!", picture: Picture.second},
  {content: "What conditioner did you use??", picture: Picture.second},
  {content: "Nice!", picture: Picture.third},
  {content: "YASSSS. Your twists are on point!!", picture: Picture.fourth},
  {content: "Nice!", picture: Picture.fourth},
  {content: "This is a whole MOOD 😴", picture: Picture.fifth},
  {content: "This is giving me Urban Outfitters vibes!", picture: Picture.last}
])
  puts "done seeding comments"

# com_array = [{content: "So cute !", picture: Picture.id}]
  

# com_array.each do |com|
#   Picture.Comment.create (com)
# end

puts "done seeding comment loop!!!"
    
  # {content: "So cute !", picture: Picture.all},
  # {content: "So cute !", picture: Picture.all},
  # {content: "So cute !", picture: Picture.all},
  # {content: "So cute !", picture: Picture.all}



puts "done seeding comments"

Visionboard.create([
    {
        title: "VisionBoard #1",
        photo: [Picture.first, Picture.second],
        user_id: User.first
    }
])
puts "done seeding Visionboards"







