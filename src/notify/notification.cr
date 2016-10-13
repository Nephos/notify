require "./wrapper"

class Notify::Notification
  getter title : String?
  getter body : String?
  getter icon : String?
  getter app : String

  def initialize(@title = nil, @body = nil, @icon = nil, @app = "default")
    Wrapper.notify_init @app if !Wrapper.notify_is_initted
    Wrapper.notify_set_app_name @app if Wrapper.notify_get_app_name != @app
    @c = Wrapper.notify_notification_new @title.to_s, @body.to_s, @icon.to_s
  end

  def show(gerror = nil)
    Wrapper.notify_notification_show @c, gerror
    self
  end

  private def update!
    Wrapper.notify_notification_update @c, @title.to_s, @body.to_s, @icon.to_s
    self
  end

  {% for attribute in ["title", "body", "icon"] %}

    def {{attribute.id}}=(s : String)
      @{{attribute.id}} = s
      update!
    end

  {% end %}
end
