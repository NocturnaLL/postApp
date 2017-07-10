# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.create(email: "admin@admin.com", password: 123456)

c1 = Category.create(title: "Genel", text: 'Genel kategorimiz burasıdır.')
c2 = Category.create(title: "RoR", text: 'Ruby on Rails ile ilgili fikirlerin bulunduğu kategorimiz.')

Post.create(title: 'Züper Fikir', text: 'Über Züper Fikir', category: c1, user: u)
Post.create(title: 'Süper Fikir!', text: 'Bence bilişim terimleri tekrar düzenlensin.', category_id: c1.id, user: u)
Post.create(title: 'Deneme Fikir', text: 'Test textım.', category:   c2, user: u)
