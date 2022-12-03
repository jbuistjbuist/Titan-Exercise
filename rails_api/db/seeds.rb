# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

## USERS
puts "Creating Users..."

user1 = User.create!({
  name: 'John',
  email: 'john@domain.com',
  password: 'password',
  password_confirmation: 'password'
})

user2 = User.create!({
  name: 'Jane',
  email: 'jane@domain.com',
  password: 'password',
  password_confirmation: 'password'
})

user3 = User.create!({
  name: 'Bob',
  email: 'bob@domain.com',
  password: 'password',
  password_confirmation: 'password'
})

## Workouts
puts "Creating Workouts..."
workout1 = user1.owned_workouts.create!({name: 'Leg Day'})
workout2 = user2.owned_workouts.create!({name: 'Cardio'})
workout3 = user1.owned_workouts.create!({name: 'Cool Down'})
workout4 = user1.owned_workouts.create!({name: 'Full Body'})
workout5 = user3.owned_workouts.create!({name: 'HIIT'})

puts "Adding Users to Workouts..."
workout1.users << user1
workout2.users << user1
workout2.users << user2
workout2.users << user3
workout3.users << user1
workout4.users << user1
workout4.users << user2
workout5.users << user1
workout5.users << user2
workout5.users << user3

## Exercises
puts "Creating Exercises..."

# Database exercises
# Default rest exercise
rest = Exercise.create!({name: 'Rest', category: 'rest', id:1})

chest_exercises = [
  Exercise.create!({name: 'Push-up', category: 'chest', gif_url: 'http://d205bpvrqc9yn1.cloudfront.net/0662.gif'}),
  Exercise.create!({name: 'Bench Press', category: 'chest', gif_url: 'http://d205bpvrqc9yn1.cloudfront.net/0025.gif'}),
  Exercise.create!({name: 'Chest Fly', category: 'chest', gif_url: 'http://d205bpvrqc9yn1.cloudfront.net/0308.gif'})
]

core_exercises = [
  Exercise.create!({name: 'Sit-up', category: 'core', gif_url: 'http://d205bpvrqc9yn1.cloudfront.net/3679.gif'}),
  Exercise.create!({name: 'Crunch', category: 'core', gif_url: 'http://d205bpvrqc9yn1.cloudfront.net/0274.gif'}),
  Exercise.create!({name: 'Dead Bug', category: 'core', gif_url: 'http://d205bpvrqc9yn1.cloudfront.net/0276.gif'})
]

leg_exercises = [
  Exercise.create!({name: 'Deadlift', category: 'legs', gif_url: 'http://d205bpvrqc9yn1.cloudfront.net/0032.gif'}),
  Exercise.create!({name: 'Lunge', category: 'legs', gif_url: 'http://d205bpvrqc9yn1.cloudfront.net/0336.gif'}),
  Exercise.create!({name: 'Calf Raise', category: 'legs', gif_url: 'http://d205bpvrqc9yn1.cloudfront.net/0417.gif'}),
  Exercise.create!({name: 'Split Squat', category: 'legs', gif_url: 'http://d205bpvrqc9yn1.cloudfront.net/0410.gif'}),
  Exercise.create!({name: 'Good Morning', category: 'legs', gif_url: 'http://d205bpvrqc9yn1.cloudfront.net/0044.gif'}),
  Exercise.create!({name: 'Squat', category: 'legs', gif_url: 'http://d205bpvrqc9yn1.cloudfront.net/0063.gif'})
]

cardio_exercises = [
  Exercise.create!({name: 'Jumping Jack', category: 'cardio', gif_url: 'http://d205bpvrqc9yn1.cloudfront.net/3220.gif'}),
  Exercise.create!({name: 'Burpee', category: 'cardio', gif_url: 'http://d205bpvrqc9yn1.cloudfront.net/1160.gif'}),
  Exercise.create!({name: 'Run', category: 'cardio', gif_url: 'http://d205bpvrqc9yn1.cloudfront.net/0685.gif'}),
  Exercise.create!({name: 'Skate Hop', category: 'cardio', gif_url: 'http://d205bpvrqc9yn1.cloudfront.net/3361.gif'})
]

stretch_exercises = [
  Exercise.create!({name: 'Butterfly Pose', category: 'stretch', gif_url: 'http://d205bpvrqc9yn1.cloudfront.net/1494.gif' }),
  Exercise.create!({name: 'overhead tricep stretch', category: 'stretch', gif_url: 'http://d205bpvrqc9yn1.cloudfront.net/0643.gif' }),
  Exercise.create!({name: 'wrist circles', category: 'stretch', gif_url: 'http://d205bpvrqc9yn1.cloudfront.net/1428.gif' })
]

arm_exercises = [
  Exercise.create!({name: 'Bicep Curl', category: 'arms', gif_url: 'http://d205bpvrqc9yn1.cloudfront.net/0294.gif'}),
  Exercise.create!({name: 'Tricep Extension', category: 'arms', gif_url: 'http://d205bpvrqc9yn1.cloudfront.net/0430.gif'}),
  Exercise.create!({name: 'Wrist Curl', category: 'arms', gif_url: 'http://d205bpvrqc9yn1.cloudfront.net/0369.gif'})
]

shoulder_exercises = [
  Exercise.create!({name: 'Lateral Raise', category: 'shoulders', gif_url: 'http://d205bpvrqc9yn1.cloudfront.net/0334.gif'}),
  Exercise.create!({name: 'Front Raise', category: 'shoulders', gif_url: 'http://d205bpvrqc9yn1.cloudfront.net/0310.gif'}),
  Exercise.create!({name: 'Shoulder Press', category: 'shoulders', gif_url: 'http://d205bpvrqc9yn1.cloudfront.net/0405.gif'}),
]

back_exercises = [
  Exercise.create!({name: 'Bent Over Row', category: 'back', gif_url: 'http://d205bpvrqc9yn1.cloudfront.net/0293.gif'}),
  Exercise.create!({name: 'Lat Pulldown', category: 'back', gif_url: 'http://d205bpvrqc9yn1.cloudfront.net/0198.gif'}),
  Exercise.create!({name: 'Shrug', category: 'back', gif_url: 'http://d205bpvrqc9yn1.cloudfront.net/0406.gif'})
]

# Custom Exercises
custom_exercises = [
  user1.exercises.create!({name: 'Water Break', category: 'rest', gif_url: 'https://clipartmag.com/images/water-bottle-clipart-47.jpg'}),
  user1.exercises.create!({name: 'Forward Fold', category: 'stretch'}),
  user1.exercises.create!({name: 'Bent Over Twist', category: 'stretch', gif_url: 'https://www.spotebi.com/wp-content/uploads/2015/02/bent-over-twist-exercise-illustration.gif'})
]

## Workout_Exercises
puts "Adding Exercises to Workouts..."

for exercise in leg_exercises do
  workout1.workout_exercises.create!({exercise_id: exercise.id, reps: 8, sets: 3})
end

for exercise in cardio_exercises do
  workout2.workout_exercises.create!({exercise_id: exercise.id, duration: 300})
  workout2.workout_exercises.create!({exercise_id: rest.id, duration: 30})
end

for exercise in custom_exercises do
  workout3.workout_exercises.create({exercise_id: exercise.id, duration: 30})
end

workout4.workout_exercises.create({exercise_id: 2, reps: 8, sets: 3})
workout4.workout_exercises.create({exercise_id: 13,reps: 8, sets: 3})
workout4.workout_exercises.create({exercise_id: 21, reps: 8, sets: 3})
workout4.workout_exercises.create({exercise_id: 22, reps: 8, sets: 3})
workout4.workout_exercises.create({exercise_id: 26, reps: 8, sets: 3})

workout5.workout_exercises.create({exercise_id: 3, duration: 30})
workout5.workout_exercises.create({exercise_id: 5, duration: 30})
workout5.workout_exercises.create({exercise_id: 6, duration: 30})
workout5.workout_exercises.create({exercise_id: 17, duration: 30})
workout5.workout_exercises.create({exercise_id: 18, duration: 30})



## Walkthroughs
puts "Adding Walkthroughs..."

workout1.walkthroughs.create!({user_id: user1.id})
workout2.walkthroughs.create!({user_id: user1.id})
workout2.walkthroughs.create!({user_id: user1.id, created_at: DateTime.now - 1})
workout2.walkthroughs.create!({user_id: user1.id, created_at: DateTime.now - 8})
workout2.walkthroughs.create!({user_id: user1.id, created_at: DateTime.now - 15})
workout2.walkthroughs.create!({user_id: user2.id})
workout2.walkthroughs.create!({user_id: user2.id, created_at: DateTime.now - 8})
