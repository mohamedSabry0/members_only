module ApplicationHelper
  def signed_in_layout(signed_in_flag)
    if signed_in_flag
      return [current_user.name,
              edit_user_registration_path,
              'Logout',
              destroy_user_session_path,
              :delete]
    end

    ['Sign In',
     new_user_session_path,
     'Sign Up',
     new_user_registration_path,
     :get]
  end
end
