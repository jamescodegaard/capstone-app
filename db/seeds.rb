# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   Character.create(name: 'Luke', movie: movies.first)

businesses = Business.create([
  # {
  #   name: ,
  #   email: ,
  #   password: ,
  #   password_confirmation: ,
  #   address: ,
  #   phone: ,
  #   website: ,
  #   description: ,
  #   hours: ,
  #   image: 
  # },
  # {
  #   name: ,
  #   email: ,
  #   password: ,
  #   password_confirmation: ,
  #   address: ,
  #   phone: ,
  #   website: ,
  #   description: ,
  #   hours: ,
  #   image: 
  # },
  {
    name: "Impact Coffee",
    email: "test4@impactcoffee.com",
    password: "password",
    password_confirmation: "password",
    address: "3251 Stonecreek Drive, Madison, WI 53719",
    phone: "(563) 419-3141",
    website: "https://www.impactcoffee.com/",
    description: "We are a specialty coffee bar and roastery located in Decorah Iowa. Our bar features single origin pour-overs, creatively crafted espresso drinks, and nitro cold brew on draft!",
    hours: "Monday: 8AM - 3PM, Tuesday: 8AM - 3PM, Wednesday: 8AM - 3PM, Thursday: 8AM - 7PM, Friday: 8AM - 7PM,Saturday: 8AM - 6PM, Sunday: 8AM - 1PM",
    image: "https://cdn.shopify.com/s/files/1/2596/7938/files/Impact_Logo_Final_White.png_2_400x200.png?v=1586899776"
  }
])

# events = Event.create([
#   {
#     name: ,
#     date: ,
#     description: ,
#     alt_contact: ,
#     alt_email: ,
#     image: ,
#     business_id: 
#   },
#   {
#     name: ,
#     date: ,
#     description: ,
#     alt_contact: ,
#     alt_email: ,
#     image: ,
#     business_id: 
#   },
#   {
#     name: ,
#     date: ,
#     description: ,
#     alt_contact: ,
#     alt_email: ,
#     image: ,
#     business_id: 
#   }
# ])

# tags = Tag.create([
#   { name: 'Music' }, 
#   { name: 'Beer Release' },
#   { name: 'Recreational' },
#   { name: 'Trivia' }
# ])

# event_tags = EventTag.create([
#     {
#       event_id: 1,
#       tag_id: 2
#     },
#     {
#       event_id: 1,
#       tag_id: 3
#     },
#     {
#       event_id: 1,
#       tag_id: 1
#     }
#   ])