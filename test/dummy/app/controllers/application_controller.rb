class ApplicationController < ActionController::Base
  protect_from_forgery

  helper Contenteditable::Engine.helpers


end
