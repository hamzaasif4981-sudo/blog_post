module ApplicationHelper
  def valid_user?
    user_signed_in?
  end
end
