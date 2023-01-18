class ApplicationController < ActionController::Base
  rescue_from Exception, with: ->(e) { LiveLog::Logger.handle_exception(e) }
end
