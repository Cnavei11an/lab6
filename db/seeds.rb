user = User.create!(email: 'test@example.com', password: 'password', first_name: 'Test', last_name: 'User')

10.times do |i|
  post = Post.create!(title: "Título del Post #{i + 1}", content: "Contenido del Post #{i + 1}", author: user.first_name, published: 1, user: user)
  Comment.create!(content: "Comentario del Post #{i + 1}", author: user.first_name, post: post, user: user)
end

