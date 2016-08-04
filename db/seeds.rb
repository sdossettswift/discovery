User.create! email: "attorney@example.com", username: "attorney1", password: "example"
User.create! email: "attorney2@example.com", username: "attorney2", password: "example"
User.create! email: "client1@example.com", username: "client1", password: "example"
User.create! email: "client2@example.com", username: "client2", password: "example"
User.create! email: "paralegal@example.com", username: "paralegal", password: "example"
User.create! email: "admin@example.com", username: "admin", password: "example"


Matter.create! cause_number: "2015-201345"
Matter.create! cause_number: "2016-031305"
Matter.create! cause_number: "2016-201302"
Matter.create! cause_number: "2016-921343"

Role.create! name: "Attorney"
Role.create! name: "Client"
Role.create! name: "Paralegal"
Role.create! name: "Admin"
