class ApplicationController < ActionController::API

  # methods for auth controller
  def current_user
    # byebug
    @user ||= User.find(user_id)
  end

  def token
    request.headers['Authorization']
  end

  def decoded_token
    begin
      JWT.decode(token,'secret', true, { :algorithm => 'HS256' })
    rescue JWT::DecodeError
      [{}]
    end
  end

  def user_id
    decoded_token.first['user_id']
  end

  def logged_in?
    !!current_user
  end

  def issue_token(payload)
    # byebug
    secret = 'secret'
    token = JWT.encode(payload, secret, 'HS256')
  end


  # methods for the notifications controller

  def has_notify?(forum)
    current_forum = Forum.find(forum)
    if current_forum.messages.count > this.current_length
      this.display = true
    end
  end

  def update_length
    forum_to_notify = this.id
    notification = Notification.find_by(forum_id: forum_to_notify)
    notification.previous_length = Forum.find(this.id).messages.count - 1
    notification.current_lenght = Forum.find(this.id).messages.count

    #code
  end

end
