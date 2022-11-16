User.create(email: 'dean@example.com', name: 'Dean', password: 'password', password_confirmation: 'password',role: User.roles[:admin])
User.create(email: 'John@doe.com', name: 'John', password: 'password', password_confirmation: 'password')
User.create(email: 'ryowu0329@gmail.com', name: '吳小毛',password: 'leo140814', password_confirmation: 'leo140814')

posts = []
comments = []

elapsed = Benchmark.measure do
  1000.times do |x|
    puts "Creating post #{x}"
    post = Post.new(title: "Title #{x}",
                    body: "Body #{x} Words go here Idk",
                    user_id: User.first.id)
    posts.push(post)
    10.times do |y|
      puts "Creating comment #{y} for post #{x}"
      comment = post.comments.new(body: "Comment #{y}",
                                  user_id: User.second.id)
      comments.push(comment)
    end
  end
end

Post.import(posts)
Comment.import(comments)

puts "Elapsed time is #{elapsed.real} seconds"

  
