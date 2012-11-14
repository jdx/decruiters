class SendgridController < ApplicationController
  skip_before_filter :protect_from_forgery

  def create
    Rails.logger.info "received email"
    Rails.logger.info params.inspect
    render nothing: true, status: 200
  end
end
