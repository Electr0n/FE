class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :allow_ajax_request_from_other_domains
  def allow_ajax_request_from_other_domains
  	headers['Access-Control-Allow-Origin'] = '*'
  	headers['Access-Control-Request-Method'] = '*'
  	headers['Access-Control-Allow-Headers'] = '*'
  	headers['Access-Control-Allow-Methods'] = '*'
  end

  def index
  	render "index"
  end



  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
