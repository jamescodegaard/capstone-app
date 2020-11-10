# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   Character.create(name: 'Luke', movie: movies.first)

# function myFunction() {
  
# }

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
    image: "/img/decorah/oneotacoop.jpg",
    category: "Other"
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
    image: "/img/decorah/pulpitrock.jpg",
    category: "Brewery"
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
    hours: "Monday-Friday: 6AM - 6PM,Saturday: 6AM - 8PM, Sunday: 8AM - 1PM",
    image: "/img/decorah/impact.jpg",
    category: "Coffee Shop"
  },
  {
    name: "Doug Boodle Studios",
    email: "boodle@gmail.com",
    password: "password",
    password_confirmation: "password",
    address: "501 High St, Decorah, IA 52101",
    phone: "(563) 380-9558",
    website: "https://www.facebook.com/Doug-Boodle-199059877397514",
    description: "Ready to noodle & boodle to fun local bands? We're the spot for you. We promote local artists and help them to collaborate within Decorah, and beyond. Swing by for a show or just to say hey - all are welcome!",
    hours: "Wednesday-Saturday: 12PM - 12AM",
    image: "/img/decorah/dougboodle.jpg",
    category: "Music Venue"
  },
  {
    name: "La Rana Bistro",
    email: "larana@gmail.com",
    password: "password",
    password_confirmation: "password",
    address: "120 Washington St, Decorah, IA 52101",
    phone: "(563) 382-3067",
    website: "https://www.facebook.com/La-Rana-Bistro-108552905850586",
    description: "Come Join Us for Fresh and Amazing Food and a Fantastic Selection of Cocktails, Wine and Beer! Cheers!",
    hours: "Monday-Saturday: 11AM - 2PM & 5PM - 9PM, Sunday: Closed",
    image: "/img/decorah/LaRana.jpg",
    category: "Restaurant"
  },
  {
    name: "Luna Valley Farm",
    email: "lunavalleyfarm@gmail.com",
    password: "password",
    password_confirmation: "password",
    address: "3012 Middle Sattre Road, Decorah, IA 52101",
    phone: "(563) 382-1111",
    website: "https://www.lunavalleyfarm.com/",
    description: "We are an organic farm in Decorah, Iowa growing organic crops, grazing sheep and cattle on pasture, powering our farm and home with the sun, and growing deep roots in our community. We love bringing people together over good food, especially when we can share ingredients we’ve grown here at Luna Valley Farm.",
    hours: "Friday & Saturday nights, May thru October",
    image: "/img/decorah/lunavalley.jpg",
    category: "Restaurant"
  },
  {
    name: "Rubaiyat",
    email: "rubaiyat@gmail.com",
    password: "password",
    password_confirmation: "password",
    address: "117 West Water Street, Decorah, IA 52101",
    phone: "(563) 382-WINE",
    website: "http://www.rubaiyatrestaurant.com/",
    description: "We feature a seasonal American menu, emphasizing straight - forward, approachable cuisine that both looks and tastes clean and composed.  This means simply but skillfully prepared ingredient - driven dishes that reveal our commitment to using the highest quality products, in season, and local when available.",
    hours: "Wednesday-Saturday: 4:30PM - 7PM",
    image: "/img/decorah/rubaiyat.jpg",
    category: "Restaurant"
  },
])

events = Event.create([
  {
    name: "Saftig Summer Jam",
    date: "2020-08-28 15:00:00",
    description: "Come join us for a fun night of music and an outdoor beer extravaganza. We'll being pouring until the kegs are tapped - enjoy the [properly socially-distanced] fun in the sun!",
    alt_contact: "Brewmaster Bob",
    alt_email: "bob@gmail.com",
    image: "/img/decorah/events/pulpit-beer-release.jpg",
    business_id: 2
  },
  {
    name: "Drag w/ an Impact",
    date: "2020-10-27 20:00:00",
    description: "The name says it all...have a blast with your favorite local drag queens while sipping on your favorite local coffee/cocktail/beverage of choice! No reservation necessary - and don't remember to bring your tips!",
    alt_contact: "Gabe",
    alt_email: "gabe@gmail.com",
    image: "/img/decorah/events/impact-drag.jpg",
    business_id: 3
  },
  {
    name: "Concert Series: Local Feature Week 1",
    date: "2020-09-03 20:00:00",
    description: "Throughout the Fall we'll be featuring local bands in a weekly concert series. The official lineup for each concert will be announced the week prior. Admission is free and we hope you'll come to support our artists.",
    alt_contact: "Seamus",
    alt_email: "seamus@gmail.com",
    image: "/img/decorah/events/boodle-concertseries.jpg",
    business_id: 4
  },
  {
    name: "Concert Series: Local Feature Week 2",
    date: "2020-09-10 20:00:00",
    description: "Throughout the Fall we'll be featuring local bands in a weekly concert series. The official lineup for each concert will be announced the week prior. Admission is free and we hope you'll come to support our artists.",
    alt_contact: "Seamus",
    alt_email: "seamus@gmail.com",
    image: "/img/decorah/events/boodle-event2.jpg",
    business_id: 4
  },
  {
    name: "Concert Series: Local Feature Week 3",
    date: "2020-09-17 20:00:00",
    description: "Throughout the Fall we'll be featuring local bands in a weekly concert series. The official lineup for each concert will be announced the week prior. Admission is free and we hope you'll come to support our artists.",
    alt_contact: "Seamus",
    alt_email: "seamus@gmail.com",
    image: "/img/decorah/events/boodle-event3.jpg",
    business_id: 4
  },
  {
    name: "Concert Series: Local Feature Week 4",
    date: "2020-09-24 20:00:00",
    description: "Throughout the Fall we'll be featuring local bands in a weekly concert series. The official lineup for each concert will be announced the week prior. Admission is free and we hope you'll come to support our artists.",
    alt_contact: "Seamus",
    alt_email: "seamus@gmail.com",
    image: "/img/decorah/events/boodle-event4.jpg",
    business_id: 4
  },
  {
    name: "Concert Series: Local Feature Week 5",
    date: "2020-10-01 20:00:00",
    description: "Throughout the Fall we'll be featuring local bands in a weekly concert series. The official lineup for each concert will be announced the week prior. Admission is free and we hope you'll come to support our artists.",
    alt_contact: "Seamus",
    alt_email: "seamus@gmail.com",
    image: "/img/decorah/events/boodle-event5.jpg",
    business_id: 4
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
  },
  {
    event_id: 3,
    tag_id: 1
  },
  {
    event_id: 3,
    tag_id: 6
  },
  {
    event_id: 4,
    tag_id: 1
  },
  {
    event_id: 4,
    tag_id: 6
  },
  {
    event_id: 5,
    tag_id: 1
  },
  {
    event_id: 5,
    tag_id: 6
  },
  {
    event_id: 6,
    tag_id: 1
  },
  {
    event_id: 6,
    tag_id: 6
  },
  {
    event_id: 7,
    tag_id: 1
  },
  {
    event_id: 7,
    tag_id: 6
  }
  
])