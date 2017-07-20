# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
Item.destroy_all
User.destroy_all

u = User.create(name: "usuario1", email: "diego@diego.cl")

c = Category.create(name:"C1")

z = User.last 

c.items.build(serial: 1212, size: 333, description:"Neumatico1", user_id: z.id).save
c.items.build(serial: 133, size: 12, description:"Neumatico2", user_id: z.id).save






