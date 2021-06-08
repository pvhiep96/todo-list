# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: 'abc@gmail.com', name: 'abc name', password: '123123')
Todo.create(user: User.first, content: 'DI CHO', description: 'Mua rau, mua ca', deadline: '2021-05-31 08:00:00')
Todo.create(user: User.first, content: 'Tap the duc', description: 'chay bo', deadline: '2021-05-31 06:00:00')
Todo.create(user: User.first, content: 'Nghe TA', description: 'Unit 12', deadline: '2021-05-31 07:00:00')
Todo.create(user: User.last, content: 'Di du hoc', description: 'US', deadline: '2021-05-31 07:00:00')