class HomepageController < ApplicationController

  def index
     @comments = Comment.all.order('created_at DESC')
    #raise current_user.inspect
  end

  def create
  #  raise params.inspect
    Comment.create!(
      content: params[:comment]
      )
      redirect_to homepage_index_path
  end

end
