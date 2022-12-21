class PageController < ApplicationController
  def index
    LiveLog::Logger.info("Cool Message!!")
  end
end
