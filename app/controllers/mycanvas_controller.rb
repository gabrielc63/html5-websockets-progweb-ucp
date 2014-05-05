class MycanvasController < WebsocketRails::BaseController
  include ActionView::Helpers::SanitizeHelper

  def initialize_session
    puts "Session Initialized\n"
  end

  def user_msg(ev, msg)
    broadcast_message ev, {
      x: msg[:x],
      y: msg[:y],
      type: msg[:type]
      }
  end

  def draw_click
    user_msg :draw_click, message
  end

end
