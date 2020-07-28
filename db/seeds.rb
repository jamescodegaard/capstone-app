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
    email: "pulpit@gmail.com",
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
    email: "impact@gmail.com",
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

events = Event.create([
  {
    name: "Saftig Summer Jam",
    date: "2020-08-28 17:00:00",
    description: "Come join us for a fun night of music and an outdoor beer extravaganza. We'll being pouring until the kegs are tapped - enjoy the [properly socially-distanced] fun in the sun!",
    alt_contact: "Brewmaster Bob",
    alt_email: "bob@gmail.com",
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ80TTxXrHzd5kNuXTJQQDDoR-WnSjspXffdA&usqp=CAU",
    business_id: 2
  },
  {
    name: "Drag w/ an Impact",
    date: "2020-10-27 20:00:00",
    description: "The name says it all...have a blast with your favorite local drag queens while sipping on your favorite local coffee/cocktail/beverage of choice! No reservation necessary - and don't remember to bring your tips!",
    alt_contact: "Gabe",
    alt_email: "gabe@gmail.com",
    image: "https://media-cdn.tripadvisor.com/media/photo-s/19/d6/b2/fe/sitting-areas.jpg",
    business_id: 3
  }
])

tags = Tag.create([
  { name: 'Music' }, 
  { name: 'Beer Release' },
  { name: 'Recreational' },
  { name: 'Trivia' },
  { name: 'Drag Show' },
  { name: 'Community' },
])

event_tags = EventTag.create([
  {
    event_id: 1,
    tag_id: 1
  },
  {
    event_id: 1,
    tag_id: 2
  },
  {
    event_id: 2,
    tag_id: 5
  },
  {
    event_id: 2,
    tag_id: 6
  }
])