User.create(email: 'ryowu0329@gmail.com',password: 'leo140814', password_confirmation: 'leo140814')
10.times do |x|
    Post.create(title: "Title #{x}",body: "Body #{x} Words go here Idk", user_id: User.first.id)
end
