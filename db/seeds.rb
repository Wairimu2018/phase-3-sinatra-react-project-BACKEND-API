# Dependent Models
Pet.destroy_all

# Independent Models
User.destroy_all



puts "🌱 Seeding Users..."

## Users

    sam = User.create(   
        name: "Sam",
        username: "SamBob",
        password: "123",

        image_URL: "https://ca.slack-edge.com/T02MD9XTF-U018W9H54N6-38321cb359b0-512",
        location: "The Boogie Down - BX"

    )

    sakinah = User.create(   
        name: "Sakinah",
        username: "Sishaq",
        password: "12345",

        image_URL: "https://ca.slack-edge.com/T02MD9XTF-U02SUD481L0-58bbb2a5b776-512",
        location: "The Boogie Down - BX"

    )

    alexis = User.create(   
        name: "Alexis",
        username: "Alexis",
        password: "123",

        image_URL: "https://ca.slack-edge.com/T02MD9XTF-U02UVKW3J10-8be8627c12e4-512",
        location: "The Chi"

    )

## Users




## Pets

puts "🌱 Seeding Pets..."

Pet.create(

    name: "Woobly",
    user_id: sam.id

)

## Pets







puts "✅ Done seeding!"
