User.destroy_all

u1 = User.create! name: 'Malik', email: 'malik@adonis.com.au', password: 'adonis', admin: true, user_type: 'trainer'
u2 = User.create! name: 'Amin', email: 'amin@adonis.com.au', password: 'adonis', user_type: 'customer'
u3 = User.create! name: 'Jamie', email: 'jamie@adonis.com.au', password: 'adonis', user_type: 'customer'

puts "Created #{ User.count } users."
