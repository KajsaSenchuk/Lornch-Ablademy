# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:
#
#   Person.create(first_name: 'Eric', last_name: 'Kelly')

clinic_1 = Clinic.create(title: "Advanced Metaphysical Un-Object Programming", description: "Ugghh wut?", speaker: "Steven Universe")
clinic_2 = Clinic.create(title: "Big-U Notation", description: "Big O notation but with the letter U", speaker: "Craig Barstow")

comment_1 = Comment.create(clinic: clinic_1, asker: "Connie", body: "But how does one...program exactly?")
comment_2 = Comment.create(clinic: clinic_2, asker: "Ben", body: "You spelled comment wrong")

student_1 = Student.create(name: "That one guy")
student_2 = Student.create(name: "Seabass Bourkenstein")

signup_1 = Signup.create(student: student, clinic: clinic_1)
signup_2 = Signup.create(student: student_2, clinic: clinic_1)