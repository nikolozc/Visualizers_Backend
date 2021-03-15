# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#   faker - User.create(name: Faker::Name.unique.name)

User.destroy_all
DataSet.destroy_all
SortDataElement.destroy_all

user = User.create(name:"Nikoloz", password:"123")
dataset1 = DataSet.create(name:"First Set")
dataset2 = DataSet.create(name:"Second Set")
con1 = UserDataConnector.create(user_id:user.id, data_set_id:dataset1.id)
con2 = UserDataConnector.create(user_id:user.id, data_set_id:dataset2.id)

4.times do
    SortDataElement.create(data_set_id:dataset1.id, data: rand(100))
end

6.times do
    SortDataElement.create(data_set_id:dataset2.id, data: rand(100))
end