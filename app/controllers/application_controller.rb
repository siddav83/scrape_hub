class ApplicationController < ActionController::Base

  # def not_found
  #   raise ActionController::RoutingError.new('Not Found')
  # end
  config.exceptions_app = self.routes
end

