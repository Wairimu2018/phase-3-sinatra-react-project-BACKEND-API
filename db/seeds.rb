User.destroy_all



puts "🌱 Seeding Users..."

# Users
User.create(   
    name: "Sam",
    username: "SamBob",
    password: "123",

    image_URL: "https://ca.slack-edge.com/T02MD9XTF-U018W9H54N6-38321cb359b0-512",
    location: "The Boogie Down - BX"

)

User.create(   
    name: "Sakinah",
    username: "Sishaq",
    password: "12345",

    image_URL: "https://ca.slack-edge.com/T02MD9XTF-U02SUD481L0-58bbb2a5b776-512",
    location: "The Boogie Down - BX"

)

puts "✅ Done seeding!"
