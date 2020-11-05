module PostsHelper
    def user_info(signed_in, post)
        return {name: post.user.name,
                username: post.user.username} if signed_in
        return {name: "anonymous",
                username: "anonymous"}
    end
    
    def user_img(signed_in)
        "https://bulma.io/images/placeholders/64x64.png" if signed_in
    end
end
