# DO NOT MAKE AN ADMIN HERE #

Role.destroy_all
User.destroy_all

freelancer = Role.create(title: "Freelancer")
employer = Role.create(title: "Employer")
#
# employer_test_user_1 = User.create(email: "alibaba@baba.com", password: "aaaaaaaaaaa", first_name: "Ali", role_id: employer.id)
# employer_test_user_2 = User.create(email: "sjakie@baba.com", password: "aaaaaaaaaaa", first_name: "Sjaakie", role_id: employer.id)
# freelancer_test_user_1 = User.create(email: "piet@desjaak.com", password: "aaaaaaaaaaa", first_name: "Piet", role_id: freelancer.id)
# freelancer_test_user_2 = User.create(email: "marie@desjaak.com", password: "aaaaaaaaaaa", first_name: "Marietje", role_id: freelancer.id)
# job = Job.create(title: "Nice job")
# job2 = Job.create(title: "Nicer job woo")
