require "./notify/*"

module Notify
  def send(title : String?, body : String?, icon : String?, app : String = "default")
    Notify::Notification.new(title, body, icon, app).show
  end

  extend self
end
