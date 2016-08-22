# DO NOT MAKE AN ADMIN HERE #

freelancer = Role.create(title: "Freelancer")
employer = Role.create(title: "Employer")

test_user = User.create(first_name: "Ali", role_id: employer.id)
