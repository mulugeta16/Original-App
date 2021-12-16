10.times do |index|
    User.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        password: "password",
        password_confirmation: "password",
    )
    end
    Blog.create!(title: 'Real MAdrid FC',
    content: 'Drawn with PSG',
    image: 'image1',
    user_id: 1)
    
    Blog.create!(title: 'Barcelona',
    content: 'knocked out of champions league',
    image: 'image2',
    user_id: 2)
    
    Blog.create!(title: 'Liverpool',
    content: 'Get easy draw with Salsburg',
    image: 'image3',
    user_id: 3)
    
    Blog.create!(title: 'Manchester city',
    content: 'get portugal side Sporting Lisbon',
    image: 'image4',
    user_id: 4)
    
    Blog.create!(title: 'MAnchester United',
    content: 'drawn with Atletico Madrid',
    image: 'image4',
    user_id: 4)
    
    User.create!( name: "admin",
    email: "admin@gmail.com",
    password: "123456",
    password_confirmation: "123456",
    admin: true )

    User.create!(name: 'Guest User',
             email: 'gues1t@example.com',
             password: '12345678',
             password_confirmation: '12345678')
             
    Comment.create!(suggest: 'Mbape will be an issue in the draw!',
    blog_id: 1,
    user_id: 1)
    
    Comment.create!(suggest: 'It is shocking news to learn Barca out!!',
    blog_id: 2,
    user_id: 2)
    
    Comment.create!(suggest: 'Liverpool are favorites to pass to next round!!!',
    blog_id: 3,
    user_id: 3)
    
    Comment.create!(suggest: 'Time for Guardiola to win Champions league!!!',
    blog_id: 4,
    user_id: 4)