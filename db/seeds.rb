User.destroy_all

u1 = User.create! name: 'Malik', email: 'malik@adonis.com.au', password: 'adonis', admin: true, user_type: 'trainer', address: '385 Oxford St, Paddington NSW 2021'
u2 = User.create! name: 'Amin', email: 'amin@adonis.com.au', password: 'adonis', user_type: 'client'
u3 = User.create! name: 'Jamie', email: 'jamie@adonis.com.au', password: 'adonis', user_type: 'client'
u4 = User.create! name: 'David', email: 'david@adonis.com.au', password: 'adonis', user_type: 'trainer', address: '9 Salisbury Rd, Castle Hill NSW 2154'


puts "Created #{ User.count } users."



Plan.destroy_all

p1 = Plan.create! name: 'Strength',schedule: 'Week1: squats for days. Week2: Deadlifts and tings. Week4: Kettle Bells', client_id: u2.id, trainer_id: u1.id
p2 = Plan.create! name: 'Conditioning',schedule: 'Week1: Burpees. Week2: Bench Bench Bench. Week4: Yoga and swimming', client_id: u3.id, trainer_id: u1.id


Message.destroy_all

m1 = Message.create! title: 'What is on this week', content: 'Strongman comp'

m2 = Message.create! title: 'Achievements', content: 'Dav lifted a massive 310kg deadlift'
