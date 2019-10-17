class ApplicationController < ActionController::API
  include Response
  include ExceptionHandler

  # load_and_authorize_resource
  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { head :forbidden, content_type: 'text/html' }
    end
  end
end
