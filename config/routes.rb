Rails.application.routes.draw do
  LiveLog::Web.use Rack::Auth::Basic do |username, password|
    username == ENV['LIVELOG_USERNAME'] && password == ENV['LIVELOG_PASSWORD']
  end if Rails.env.production?

  mount LiveLog::Web, at: 'rrtools/live-log', defaults: { group: 'RRTools' }

  root 'page#index'
  get 'rails_warn', to: 'file#index'
  post '/info', to: 'page#info'
  post '/warn', to: 'page#warn'
  post '/error', to: 'page#error'
  post '/exception', to: 'page#exception'
  post '/rails_info', to: 'page#rails_info'
  post '/rails_error', to: 'page#rails_error'
end
