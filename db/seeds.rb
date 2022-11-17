puts "Creating Students..."

student1 = Student.create(first_name:"Paolo", last_name:"Garcia")
student2 = Student.create(first_name:"Mason", last_name:"White")
student3 = Student.create(first_name:"Chuck", last_name:"Shrout")

puts "Creating Posts..."

post1 = Post.create(phase: 3, topic: "Ruby", location: "Denver", thread_post: "Check out my recent project on Ruby!", student_id: Student.ids.sample, like_button: TRUE)
post2 = Post.create(phase: 3, topic: "Ruby", location: "Missouri", thread_post: "When is our code challange?", student_id: Student.ids.sample, like_button: FALSE)
post3 = Post.create(phase: 3, topic: "Ruby", location: "Hawaii", thread_post: "Can anyone help me figure out the solution to this lab?", student_id: Student.ids.sample, like_button: FALSE)

puts "Creating Comments..."

comm1 = Comment.create(thread_comment: "It's this Friday at 10 AM", comment_user: "Sam", post_id: Post.ids.sample)
comm2 = Comment.create(thread_comment: "Yeah hit me up on Discord and I'll help you out", comment_user: "Stephen", post_id: Post.ids.sample)
comm3 = Comment.create(thread_comment: "Wow! That's really nice, congrats!", comment_user: "Yesenia", post_id: Post.ids.sample)


puts "Done Seeding MF!"