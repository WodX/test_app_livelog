class PageController < ApplicationController
  def index; end

  def info
    LiveLog::Logger.info('This is a Info message')
  end

  def warn
    LiveLog::Logger.warn('This is a Warning message')
  end

  def error
    LiveLog::Logger.error('This is a Error message')
  end

  def exception
    69 / 0
  end

  def rails_info
    Rails.logger.info 'Info message from Rails.logger.info!'
  end

  def rails_error
    Rails.logger.error 'Error message from Rails.logger.error!'
  end
end
