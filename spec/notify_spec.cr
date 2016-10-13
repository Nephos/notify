require "./spec_helper"

describe Notify do
  it "works" do
    n = Notify::Notification.new("test", "body")
    n.show
    sleep 0.5
    n.title = "2"
    sleep 0.5
    n.show
    Notify.send("Title", "Body text", "image path")
  end
end
