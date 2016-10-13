require "libnotify"

module Notify::Wrapper
  def notify_init(app_name : String) : Bool
    Libnotify::C.notify_init app_name
  end

  def notify_uninit : Void
    Libnotify::C.notify_uninit
  end

  def notify_is_initted : Bool
    Libnotify::C.notify_is_initted
  end

  def notify_get_app_name : String
    String.new Libnotify::C.notify_get_app_name
  end

  def notify_set_app_name(app_name : String) : Void
    Libnotify::C.notify_set_app_name app_name
  end

  # GList *             notify_get_server_caps  (void);
  # gboolean            notify_get_server_info  (char **ret_name,
  #                                              char **ret_vendor,
  #                                              char **ret_version,
  #                                              char **ret_spec_version);

  def notify_notification_new(summary : String,
                              body : String,
                              icon : String)
    Libnotify::C.notify_notification_new summary, body, icon
  end

  def notify_notification_show(notification, gerror) : Bool
    Libnotify::C.notify_notification_show notification, gerror
  end

  def notify_notification_update(notification,
                                 summary : String,
                                 body : String,
                                 icon : String) : Bool
    Libnotify::C.notify_notification_update notification, summary, body, icon
  end

  extend self
end
