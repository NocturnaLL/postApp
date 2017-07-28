# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u = User.create(email: "admin@admin.com", password: 123456, name: 'Burak Fidansoy')
u2 = User.create(email: "user@user.com", password: 123456, name: 'Utku Balcı')
u3 = User.create(email: "user2@user.com", password: 123456, name: 'Kerem Tuncer')
u4 = User.create(email: "user3@user.com", password: 123456, name: 'Yalvaç Top')
u5 = User.create(email: "user4@user.com", password: 123456, name: 'Bünyamin Iseri')
u6 = User.create(email: "user5@user.com", password: 123456, name: 'Alişan Kaya')
u7 = User.create(email: "user6@user.com", password: 123456, name: 'Burak Öz')
u8 = User.create(email: "user7@user.com", password: 123456, name: 'Buğra Kalaycı')

c1 = Category.create(title: "Education", text: 'Ruby on Rails ile ilgili fikirlerin bulunduğu kategorimiz.')
c2 = Category.create(title: "Personal", text: 'Ruby on Rails ile ilgili fikirlerin bulunduğu kategorimiz.')
c3 = Category.create(title: "Photography", text: 'Ruby on Rails ile ilgili fikirlerin bulunduğu kategorimiz.')
c4 = Category.create(title: "Cooking", text: 'Ruby on Rails ile ilgili fikirlerin bulunduğu kategorimiz.')
c5 = Category.create(title: "Sport", text: 'Ruby on Rails ile ilgili fikirlerin bulunduğu kategorimiz.')
c6 = Category.create(title: "Technology", text: 'Ruby on Rails ile ilgili fikirlerin bulunduğu kategorimiz.')

Post.create(title: 'Züper Fikir', text: 'Über Züper Fikir', category: c1, user: u)
Post.create(title: 'Süper Fikir!', text: 'Bence bilişim terimleri tekrar düzenlensin.', category_id: c1.id, user: u)
Post.create(title: 'Deneme Fikir', text: 'Test descriptionriptionım.', category: c2, user: u)
Post.create(title: 'Züper Fikir', text: 'Über Züper Fikir', category: c1, user: u)
Post.create(title: 'Süper Fikir!', text: 'Bence bilişim terimleri tekrar düzenlensin.', category_id: c1.id, user: u)
Post.create(title: 'Deneme Fikir', text: 'Test descriptionriptionım.', category: c2, user: u)
Post.create(title: 'Züper Fikir', text: 'Über Züper Fikir', category: c1, user: u)
Post.create(title: 'Süper Fikir!', text: 'Bence bilişim terimleri tekrar düzenlensin.', category_id: c1.id, user: u)
Post.create(title: 'Deneme Fikir', text: 'Test descriptionriptionım.', category: c2, user: u)
Post.create(title: 'Züper Fikir', text: 'Über Züper Fikir', category: c1, user: u)
Post.create(title: 'Süper Fikir!', text: 'Bence bilişim terimleri tekrar düzenlensin.', category_id: c1.id, user: u)
Post.create(title: 'Deneme Fikir', text: 'Test descriptionriptionım.', category: c2, user: u)
Post.create(title: 'Züper Fikir', text: 'Über Züper Fikir', category: c1, user: u)
Post.create(title: 'Süper Fikir!', text: 'Bence bilişim terimleri tekrar düzenlensin.', category_id: c1.id, user: u)
Post.create(title: 'Deneme Fikir', text: 'Test descriptionriptionım.', category: c2, user: u)
Post.create(title: 'Züper Fikir', text: 'Über Züper Fikir', category: c1, user: u)
Post.create(title: 'Süper Fikir!', text: 'Bence bilişim terimleri tekrar düzenlensin.', category_id: c1.id, user: u)
Post.create(title: 'Deneme Fikir', text: 'Test descriptionriptionım.', category: c2, user: u)
Post.create(title: 'Züper Fikir', text: 'Über Züper Fikir', category: c1, user: u)
Post.create(title: 'Süper Fikir!', text: 'Bence bilişim terimleri tekrar düzenlensin.', category_id: c1.id, user: u)
Post.create(title: 'Deneme Fikir', text: 'Test descriptionriptionım.', category: c2, user: u)
Post.create(title: 'Züper Fikir', text: 'Über Züper Fikir', category: c1, user: u)
Post.create(title: 'Süper Fikir!', text: 'Bence bilişim terimleri tekrar düzenlensin.', category_id: c1.id, user: u)
Post.create(title: 'Deneme Fikir', text: 'Test descriptionriptionım.', category: c2, user: u)
Post.create(title: 'Züper Fikir', text: 'Über Züper Fikir', category: c1, user: u)
Post.create(title: 'Süper Fikir!', text: 'Bence bilişim terimleri tekrar düzenlensin.', category_id: c1.id, user: u)
Post.create(title: 'Deneme Fikir', text: 'Test descriptionriptionım.', category: c2, user: u)
Post.create(title: 'Züper Fikir', text: 'Über Züper Fikir', category: c1, user: u)
Post.create(title: 'Süper Fikir!', text: 'Bence bilişim terimleri tekrar düzenlensin.', category_id: c1.id, user: u)
Post.create(title: 'Deneme Fikir', text: 'Test descriptionriptionım.', category: c2, user: u)
Post.create(title: 'Züper Fikir', text: 'Über Züper Fikir', category: c1, user: u)
Post.create(title: 'Süper Fikir!', text: 'Bence bilişim terimleri tekrar düzenlensin.', category_id: c1.id, user: u)
Post.create(title: 'Deneme Fikir', text: 'Test descriptionriptionım.', category: c2, user: u)
