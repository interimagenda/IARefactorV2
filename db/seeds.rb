# DO NOT MAKE AN ADMIN HERE #

freelancer = Role.create(title: "Freelancer")
employer = Role.create(title: "Employer")

test_user = User.create(email: "alibaba@baba.com", password: "aaaaaaaaaaa", first_name: "Ali", role_id: employer.id)
test_user2 = User.create(email: "baba@baba.com", password: "aaaaaaaaaaa", first_name: "Ali", role_id: freelancer.id)
