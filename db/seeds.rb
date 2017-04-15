[User, Print].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE #{model.table_name} RESTART IDENTITY CASCADE")
end

tom = User.create!(
  username: "tom",
  email: "tom@allen.co",
  )

Print.create!(
title: "Ocean",
image: "https://postimg.org/image/tcp6uj3g1/",
height: 12,
width: 24,
medium: "Print",
price: 50,
body: "Blurb about the print",
user: tom
)
