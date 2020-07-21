# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   Character.create(name: 'Luke', movie: movies.first)

businesses = Business.create([
  {
    name: "Oneota Co-Op",
    email: "oneota@gmail.com",
    password: "password",
    password_confirmation: "password",
    address: "312 W Water St, Decorah, IA 52101",
    phone: "(563) 382-4666",
    website: "https://oneotacoop.com/",
    description: "The mission of the Oneota Community Food Co-op is to build vibrant communities and ecosystems by providing organic, locally produced and bulk foods, as well as other products and services that are sustainable for those who consume and produce them.",
    hours: "Monday: 9AM–7PM, Tuesday: 9AM–7PM, Wednesday: 9AM–7PM, Thursday: 9AM–7PM, Friday: 9AM–7PM, Saturday: 9AM–7PM, Sunday: 9AM–7PM",
    image: "https://www.welcometothetable.coop/sites/default/files/logo-oneota-community-co-op.jpg"
  },
  {
    name: "Pulpit Rock Brewing",
    email: "manager@pulpitrockbrewing.com",
    password: "password",
    password_confirmation: "password",
    address: "207 College Dr. Decorah, IA 52101",
    phone: "(563) 380-3610",
    website: "https://www.pulpitrockbrewing.net/",
    description: "Pulpit Rock Brewing opened its bay doors during the summer of ‘15. Founded by four Luther Alumni, fueled by two creative head-brewers and driven by a small taproom team, this modest brewery embraces the opportunity to produce and serve exciting and innovative beers.",
    hours: "Monday-Thursday: 2PM-8PM, Monday-Thursday: 2PM-8PM",
    image: "https://cdn.beeradvocate.com/im/places/42001.jpg"
  },
  {
    name: "Impact Coffee",
    email: "info@impactcoffee.com",
    password: "password",
    password_confirmation: "password",
    address: "101 W Water St, Decorah, IA 52101",
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