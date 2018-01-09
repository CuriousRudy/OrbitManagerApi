class ApplicationController < ActionController::API



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

end
