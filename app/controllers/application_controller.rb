class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception



  handles_sortable_columns do |conf|
      conf.sort_param = "sort_by"
  end

end





