module SessionsHelper
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    #    The ||= part ensures this helper doesn't hit the database every time a user hits a web page. It will look it up once, then cache it in the @current_user variable.

    #This is called memoization and it helps make our app more efficient and scalable.

  end
end
