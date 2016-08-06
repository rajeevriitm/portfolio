class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :null_session
  helper_method :time_of_creation
  include ActionView::Helpers::DateHelper
  def time_of_creation(date)
    date < 24.hours.ago ? date.strftime("%m/%d/%Y") : time_ago_in_words(date) +" ago"
  end
end
