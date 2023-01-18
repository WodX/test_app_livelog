class FileController < ApplicationController
  def index
    Rails.logger.warn 'Warning message from Rails.logger.warn!'
  end
end
