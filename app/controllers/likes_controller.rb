class LikesController < ApplicationController
  before_action :require_user_logged_in

  def create
    user = Micropost.find(params[:micropost_id]).user
    micropost = Micropost.find(params[:micropost_id])
    current_user.love(micropost)
    flash[:success] = 'タスクをお気に入りに登録しました。'
    redirect_to user
  end

  def destroy
    user = Micropost.find(params[:micropost_id]).user
    micropost = Micropost.find(params[:micropost_id])
    current_user.unlove(micropost)
    flash[:success] = 'タスクのお気に入りを解除しました。'
    redirect_to user
  end
end
