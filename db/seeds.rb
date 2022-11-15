User.create(email: 'dean@example.com', name: 'Dean', password: 'password', password_confirmation: 'password',role: User.roles[:admin])
User.create(email: 'John@doe.com', name: 'John', password: 'password', password_confirmation: 'password')
User.create(email: 'ryowu0329@gmail.com', name: '吳小毛',password: 'leo140814', password_confirmation: 'leo140814')

10.times do |x|
    post = Post.create(title: "Title #{x}",
                       body: "Body #{x} Words go here Idk",
                       user_id: User.first.id)
  
    5.times do |y|
      Comment.create(body: "Comment #{y}",
                     user_id: User.second.id,
                     post_id: post.id)
    end
  end
  
