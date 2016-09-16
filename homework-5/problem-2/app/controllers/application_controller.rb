class ApplicationController < ActionController::Base
  Time.zone = 'Eastern Time (US & Canada)'
  protect_from_forgery with: :exception
end
