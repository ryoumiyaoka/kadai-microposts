class ToppagesController < ApplicationController
  def index
     if logged_in?
      @micropost = current_user.microposts.build  # form_for 用
      @microposts = current_user.feed_microposts.order('created_at DESC').page(params[:page])
     end
  end
  
  # def index2
  #   if @user = User.find_by(id: session[:user_id]) != nil
  #     # following_ids = Relationship.where(user_id: @user.id).pluck(:follow_id)
  #     @microposts = Micropost.where(user_id: current_user.following_ids + [current_user.id]).order('created_at DESC').page(params[:page])
  #   end
  # end
end
