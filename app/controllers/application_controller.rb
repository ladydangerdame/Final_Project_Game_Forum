class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :initialize_message

 def initialize_message
   @message = Message.new
 end
 
end
