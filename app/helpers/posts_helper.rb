module PostsHelper
  def user_info(signed_in, post)
    if signed_in
      return { name: post.user.name,
               username: post.user.username }
    end
    { name: 'anonymous',
      username: 'anonymous' }
  end

  def user_img(signed_in)
    return 'none' unless signed_in
  end
end
