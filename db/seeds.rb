[User, Print].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE #{model.table_name} RESTART IDENTITY CASCADE")
end

user1 = User.create!(
  username: "user1",
  email: "1@1",
  password: "password",
  password_confirmation: "password"
  )
user2 = User.create!(
  username: "user2",
  email: "2@2",
  password: "password",
  password_confirmation: "password"
  )
user3 = User.create!(
  username: "user3",
  email: "3@3",
  password: "password",
  password_confirmation: "password"
  )
user4 = User.create!(
  username: "user4",
  email: "4@4",
  password: "password",
  password_confirmation: "password"
  )

Print.create!(
title: "Image 1",
image: "https://s23.postimg.org/gx7052tcb/7c1b61a96afbbf5f0e5c8ae9da6764fe.jpg",
height: 12,
width: 24,
medium: "Print",
price: 20,
body: "Blurb about the print",
user: user1
)
Print.create!(
title: "Image 2",
image: "https://s23.postimg.org/lkd26ugp7/7fec08f7e4085f64280f113def865b42.jpg",
height: 40,
width: 24,
medium: "Print",
price: 50,
body: "Blurb about the print",
user: user1
)
Print.create!(
title: "Image 3",
image: "https://s23.postimg.org/gmzhlqeq3/9949bab50502aa730cdb50b527e19a96.jpg",
height: 40,
width: 24,
medium: "Print",
price: 50,
body: "Blurb about the print",
user: user2
)
Print.create!(
title: "Image 4",
image: "https://s23.postimg.org/j5ps05pu3/a70a52a9b5797e59051f235e18f0b242.jpg",
height: 40,
width: 24,
medium: "Print",
price: 50,
body: "Blurb about the print",
user: user2
)
Print.create!(
title: "Image 5",
image: "https://s23.postimg.org/754bzfiff/ab3b4fc84e6ebbc8a7b2f39a5a034325.jpg",
height: 40,
width: 24,
medium: "Print",
price: 50,
body: "Blurb about the print",
user: user3
)
Print.create!(
title: "Image 6",
image: "https://s23.postimg.org/4p2ill0cr/cab7bca7b2b7d83396364c256a83d535.jpg",
height: 40,
width: 24,
medium: "Print",
price: 50,
body: "Blurb about the print",
user: user3
)
Print.create!(
title: "Image 7",
image: "https://s23.postimg.org/65e13q39n/f550e9f5fc28966d9204aff8a2c17789.jpg",
height: 40,
width: 24,
medium: "Print",
price: 50,
body: "Blurb about the print",
user: user4
)
Print.create!(
title: "Image 8",
image: "https://s23.postimg.org/5h56ks4jv/f454785ca1d29e0a66bd3a6865c39354.jpg",
height: 40,
width: 24,
medium: "Print",
price: 50,
body: "Blurb about the print",
user: user4
)
