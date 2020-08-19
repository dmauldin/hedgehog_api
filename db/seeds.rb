# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create({ name: "Dave", email: "dmauldin@gmail.com" })

["Submitted", "Open", "In Progress", "Closed"].each do |title|
  Priority.create({ title: title })
end

["Submitted", "Open", "In Progress", "Closed"].each do |title|
  Status.create({ title: title })
end

["My game", "My new song"].each do |title|
  Project.create({ name: title, owner: user })
end

Ticket.create({
  title: "example ticket",
  description: "this is the description for the example ticket",
  project: Project.first,
  status: Status.first,
  priority: Priority.first,
  submitter: User.first,
})
