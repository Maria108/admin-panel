# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create admins.
Admin.create(
  first_name: "Masha",
  last_name: "Abasha",
).build_user(email: "m@sha.com", password: "123456").save

# Create masters.
Master.create(
  picture: "/assets/splinter.jpeg",
  first_name: "Splinter",
  last_name: "Yoshi",
  age: 342,
  abilities: "Splinter is portrayed as wise, intelligent, and a skilled 'elderly martial arts master'. He is nearly always calm and, even when angry, refrains from raising his voice. He is the quintessential calm, all-knowing, wise master of all martial arts.",
  salary: 908000,
  education: "Masters",
).build_user(email: "splinter@marvel.com", password: "123456").save

Master.create(
  picture: "/assets/yoda.png",
  first_name: "Yoda",
  last_name: "Mitry",
  age: 33,
  abilities: "Jedi Grand Master Yoda is amongst the oldest, stoic and most powerful known Jedi Masters in the Star Wars universe.",
  salary: 1089000,
  education: "PhD",
).build_user(email: "yoda@marvel.com", password: "123456").save

Master.create(
  picture: "/assets/o.png",
  first_name: "Orlando",
  last_name: "Caraballo",
  age: 34,
  abilities: "Bronx raised, Dominican Republic born, self proclaimed hippie, consciousness hacker, software developer, problem solver and instructor are all adjectives to describe Orlando but he prefers to refer to himself as a human being with way too much time on his hands to pursue his interests. Always looking for the next challenge, Orlando has dedicated his life to seeking out truth, integrity and clarity. When not pondering on how to improve himself or his surroundings he often finds himself reading, playing video games, initiating discussions on world issues or philosophical viewpoints.",
  salary: 250700,
  education: "PhD",
).build_user(email: "o@marvel.com", password: "123456").save

# Create courses.
Course.create(
  name: "Martial Arts",
  hours: 560,
)

Course.create(
  name: "Universe wise",
  hours: 700,
)

Course.create(
  name: "Software Engineering",
  hours: 250,
)

# Create cohorts.
Cohort.create(
  name: "Be like a ninja",
  start_date: "2018-05-03",
  end_date: "2018-08-03",
  course_id: 1,
  master_id: 1,
)

Cohort.create(
  name: "Smart you will be",
  start_date: "2018-05-03",
  end_date: "2018-08-03",
  course_id: 2,
  master_id: 2,
)

Cohort.create(
  name: "Edge-Case",
  start_date: "2018-05-03",
  end_date: "2018-08-03",
  course_id: 3,
  master_id: 3,
)

# Create students.
Student.create(
  picture: "/assets/spider-man.jpg",
  abilities: "Peter is an accomplished scientist, inventor and photographer.",
  nickname: "Spider-Man",
  first_name: "Peter Benjamin",
  last_name: "Parker",
  age: 30,
  education: "PhD",
  cohort_id: 1,
).build_user(email: "spider@marvel.com", password: "123456").save

Student.create(
  picture: "/assets/hulk.jpg",
  abilities: "Dr. Bruce Banner is a genius in nuclear physics, possessing a mind so brilliant that it cannot be measured on any known intelligence test.",
  nickname: "Hulk",
  first_name: "Robert Bruce",
  last_name: "Banner",
  age: 33,
  education: "Masters",
  cohort_id: 2,
).build_user(email: "hulk@marvel.com", password: "123456").save

Student.create(
  picture: "/assets/iron.jpg",
  abilities: "Tony has a genius level intellect that allows him to invent a wide range of sophisticated devices, specializing in advanced weapons and armor.",
  nickname: "Iron Man",
  first_name: "Anthony Edward",
  last_name: "Stark",
  age: 37,
  education: "College",
  cohort_id: 2,
).build_user(email: "iron@marvel.com", password: "123456").save

Student.create(
  picture: "/assets/cap.jpg",
  abilities: "Captain America had mastered the martial arts of American-style boxing and judo, and had combined these disciplines with his own unique hand-to-hand style of combat.",
  nickname: "Captain America",
  first_name: "Steven",
  last_name: "Rogers",
  age: 40,
  education: "Masters",
  cohort_id: 3,
).build_user(email: "cap@marvel.com", password: "123456").save

Student.create(
  picture: "/assets/thor.jpg",
  abilities: "Thor is trained in the arts of war, being a superbly skilled warrior, highly proficient in hand-to-hand combat, swordsmanship and hammer throwing.",
  nickname: "Thor",
  first_name: "Thor",
  last_name: "Odinson",
  age: 29,
  education: "PhD",
  cohort_id: 1,
).build_user(email: "thor@marvel.com", password: "123456").save

Student.create(
  picture: "/assets/capmar.jpg",
  abilities: "Ms. Marvel is a skilled pilot & hand to hand combatant.",
  nickname: "Captain Marvel",
  first_name: "Carol",
  last_name: "Danvers",
  age: 23,
  education: "College",
  cohort_id: 2,
).build_user(email: "capmar@marvel.com", password: "123456").save

Student.create(
  picture: "/assets/raccoon.jpg",
  abilities: "Rocket has many of the same abilities as a normal raccoon, such as a heightened sense of smell and sight as compared to a human.",
  nickname: "Rocket Raccoon",
  first_name: "Rocket",
  last_name: "Raccoon",
  age: 14,
  education: "College",
  cohort_id: 1,
).build_user(email: "raccoon@marvel.com", password: "123456").save

Student.create(
  picture: "/assets/doc.jpg",
  abilities: "Doctor Strange is a skilled athlete and martial artist with substantial medical and magical knowledge.",
  nickname: "Doctor Strange",
  first_name: "Stephen Vincent",
  last_name: "Strange",
  age: 45,
  education: "Masters",
  cohort_id: 1,
).build_user(email: "doc@marvel.com", password: "123456").save

Student.create(
  picture: "/assets/dare.jpg",
  abilities: "Daredevil possesses the strength, speed, agility, and endurance, not to mention acrobatic and gymnastic skills, of an Olympic-level athlete.",
  nickname: "Daredevil",
  first_name: "Matthew Michael",
  last_name: "Murdock",
  age: 28,
  education: "College",
  cohort_id: 3,
).build_user(email: "dare@marvel.com", password: "123456").save

Student.create(
  picture: "/assets/widow.jpg",
  abilities: "Natasha Romanova, known by many aliases, is an expert spy, athlete, and assassin. Trained at a young age by the KGB's infamous Red Room Academy, the Black Widow was formerly an enemy to the Avengers. She later became their ally after breaking out of the U.S.S.R.'s grasp, and also serves as a top S.H.I.E.L.D. agent.",
  nickname: "Black Widow",
  first_name: "Natasha",
  last_name: "Romanova",
  age: 23,
  education: "College",
  cohort_id: 3,
).build_user(email: "widow@marvel.com", password: "123456").save

Student.create(
  picture: "/assets/groot.jpg",
  abilities: "Groot was extremely powerful and resilient, he has the power or regeneration allowing him to re-grow limbs and even his entire form. He also has powers of the mind, although they only appear to work on plant life, allowing him to communicate with other trees and command them to attack those that oppose him.",
  nickname: "Groot",
  first_name: "Groot",
  last_name: "-",
  age: 108,
  education: "PhD",
  cohort_id: 3,
).build_user(email: "groot@marvel.com", password: "123456").save

Student.create(
  picture: "/assets/panther.jpg",
  abilities: "T'Challa is a brilliant tactician, strategist, scientist, tracker and a master of all forms of unarmed combat whose unique hybrid fighting style incorporates acrobatics and aspects of animal mimicry.",
  nickname: "Black Panther",
  first_name: "T'",
  last_name: "Challa",
  age: 31,
  education: "PhD",
  cohort_id: 2,
).build_user(email: "panther@marvel.com", password: "123456").save

Student.create(
  picture: "/assets/falcon.jpg",
  abilities: "Excellent trainer of birds, and has been highly trained in gymnastics and hand-to-hand combat by Captain America.",
  nickname: "Falcon",
  first_name: "Samuel Thomas",
  last_name: "Wilson",
  age: 36,
  education: "Masters",
  cohort_id: 1,
).build_user(email: "falcon@marvel.com", password: "123456").save

Student.create(
  picture: "/assets/fist.jpg",
  abilities: "Iron Fist is an exceptional athlete, acrobat, and hand-to-hand combatant. He is a master of all of K'un-Lun's martial arts and many of Earth's, trained in the use of virtually all martial arts weapons.",
  nickname: "Iron Fist",
  first_name: "Daniel Thomas",
  last_name: "Rand-K'ai",
  age: 26,
  education: "College",
  cohort_id: 3,
).build_user(email: "fist@marvel.com", password: "123456").save

Student.create(
  picture: "/assets/sif.jpg",
  abilities: "Sif possesses the conventional attributes of an Asgardian woman (goddess). Like all Asgardians, she is extremely long-lived.",
  nickname: "Sif",
  first_name: "Sif",
  last_name: "Goddes",
  age: 22,
  education: "College",
  cohort_id: 1,
).build_user(email: "sif@marvel.com", password: "123456").save

Student.create(
  picture: "/assets/haw.jpg",
  abilities: "Ronin is a world-class archer and marksman. His above average reflexes and hand-eye-coordination make him the most proficient archer ever known.",
  nickname: "Hawkeye",
  first_name: "Clinton Francis",
  last_name: "Barton",
  age: 32,
  education: "PhD",
  cohort_id: 2,
).build_user(email: "haw@marvel.com", password: "123456").save
