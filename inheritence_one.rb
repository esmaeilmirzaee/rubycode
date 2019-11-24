class AdminUser
end

admin_user = AdminUser.new
#p admin_user.ping ## Generates an error

class Object
  def ping
    "pong"
  end
end

admin_user = AdminUser.new
p admin_user.ping
