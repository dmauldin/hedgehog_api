user = User.create({ name: "Dave", email: "dmauldin@gmail.com" })

["Submitted", "Open", "In Progress", "Closed"].each do |title|
  Priority.create({ title: title })
end

["Submitted", "Open", "In Progress", "Closed"].each do |title|
  Status.create({ title: title })
end

["Bug", "Story", "Task"].each do |title|
  TicketType.create({ label: title })
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
  ticket_type: TicketType.first,
})
