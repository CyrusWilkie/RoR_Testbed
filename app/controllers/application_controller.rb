class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  http_basic_authenticate_with name: 'sammy', password: 'shark', except: [:index, :show]
end
