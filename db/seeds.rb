# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Lesson.create(title: 'Ruby on Rails 💻', category: 'IT', rating: '5', user_id: '1', price: 999.99, description: 'Build a web app!')
# Lesson.create(title: 'Bouldering  🧗‍♂️', category: 'Sport', rating: '5', user_id: '1', price: 27.15, description: 'Climb higher and stronger')
# Lesson.create(title: 'Basketball 🏀', category: 'Sport', rating: '3', user_id: '1', price: 42.99, description: 'Learn to dunk like MJ!')
# Lesson.create(title: 'Flexing on Your Haters 💪', category: 'Lifestyle', rating: '5', user_id: '1', price: 99.99, description: "Lesson 1: They ain't sh*t")
# Lesson.create(title: 'Pottery 🏺', category: 'Art', rating:'4', user_id: '1', price: 12.50, description: 'Lean to build fancy pots')
# Lesson.create(title: 'Badminton 🏸', category: 'Sport', rating: '5', user_id: '1', price: 77.64, description: "It's a real sport!")
# Lesson.create(title: 'Shredding 🎸', category: 'Music', rating: '2', user_id: '1', price: 83.12, description: "For when four chords aren't enough")
# Lesson.create(title: 'Crypto 💰', category: 'Finance', rating: '4', user_id: '1', price: 50.00, description: 'To the moon!')
# Lesson.create(title: 'NFTs 101 🤪', category: 'Scams', rating: '1', user_id: '1', price: 12.50, description: "It's legit - trust me!")
# Lesson.create(title: 'Mountaineering 🏔', category: 'Sport', rating: '4', user_id: '1', price: 70.00, description: 'Stand on top of the world')
# Lesson.create(title: 'Rocket Science 🚀', category: 'Science', rating: '5', user_id: '1', price: 1000, description: "It's not THAT hard...")
# Lesson.create(title: 'Fishing 🐟', category: 'Sport', rating: '4', user_id: '1', price: 4.00, description: 'Catch better fish')
# Lesson.create(title: 'Vegan Baking 🌱', category: 'Food', rating: '4', user_id: '1', price: 80.00, description: 'Upgrade your dessert game')
# Lesson.create(title: 'Rug Making 🧶', category: 'Lifestyle', rating: '4', user_id: '1', price: 70, description: 'Build a web app!')
# Lesson.create(title: 'Art of the Deal 🤝', category: 'Business', rating: '1', user_id: '1', price: 1.50, description: 'Orange man teach business')
# Lesson.create(title: 'Mastering Tetris 🟩', category: 'Gaming', rating: '5', user_id: '1', price: 40, description: 'Get a high score!')

# t.string "title"
# t.string "category"
# t.string "rating"
# t.bigint "user_id", null: false
# t.datetime "created_at", precision: 6, null: false
# t.datetime "updated_at", precision: 6, null: false
# t.decimal "price"
# t.text "description"
# t.index ["user_id"], name: "index_lessons_on_user_id"
