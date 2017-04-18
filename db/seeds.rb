[User, Print].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE #{model.table_name} RESTART IDENTITY CASCADE")
end

tom = User.create!(
  username: "tom",
  email: "tom@allen.co",
  password: "password",
  password_confirmation: "password"
  )

Print.create!(
title: "Ocean",
image: "https://s24.postimg.org/r84ttg1th/ocean.jpg",
height: 12,
width: 24,
medium: "Print",
price: 20,
body: "Blurb about the print",
user: tom
)
Print.create!(
title: "Ram",
image: "https://s14.postimg.org/s2641mlxd/IMG_3238.jpg",
height: 40,
width: 24,
medium: "Print",
price: 50,
body: "Blurb about the print",
user: tom
)
