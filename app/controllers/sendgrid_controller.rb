class SendgridController < ApplicationController
  skip_before_filter :protect_from_forgery

  def create
    email = Email.new
    email.user = User.find(params[:to].split('@')[0])
    email.subject = params[:subject]
    email.body = params[:text]
    render nothing: true, status: 200
  end
end
