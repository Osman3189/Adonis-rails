User.destroy_all

u1 = User.create! name: 'Malik', email: 'malik@adonis.com.au', password: 'adonis', admin: true, user_type: 'trainer'
u2 = User.create! name: 'Amin', email: 'amin@adonis.com.au', password: 'adonis', user_type: 'client'
u3 = User.create! name: 'Jamie', email: 'jamie@adonis.com.au', password: 'adonis', user_type: 'client'

puts "Created #{ User.count } users."



Plan.destroy_all

p1 = Plan.create! name: 'Strength',schedule: 'Week1: squats for days. Week2: Deadlifts and tings. Week4: Kettle Bells', client_id: u2.id, trainer_id: u1.id
p2 = Plan.create! name: 'Conditioning',schedule: 'Week1: Burpees. Week2: Bench Bench Bench. Week4: Yoga and swimming', client_id: u3.id, trainer_id: u1.id



puts "Created #{ Plan.count } plans."
puts "plan2 has client #{ Plan.second.client.name }"
puts "plan2 has trainer #{ Plan.second.trainer.name }"


puts "Client 2 has schedule #{Plan.last.schedule}"
