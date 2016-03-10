class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def index
  	@users = User.all
  end

  def show
  	@spaces = Space.all
    @comment = Comment.new
  end

  def name
  	return 'You should add method :name in your Messageable model'
  end

  def mailboxer_email(user)  
  #Check if an email should be sent for that object
  #if true
  return "define_email@on_your.model"
  #if false
  #return nil
end

private
def set_user
	@user = User.find_by(username: params[:id])
end

end
