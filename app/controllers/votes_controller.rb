class VotesController < ApplicationController
  def create
    @blog = Blog.find_by id: params[:blog_id]
    @blog.liked_by current_user
    respond_to do |format|
      format.html
      format.js{render :vote}
    end
  end

  def destroy
    @blog = Blog.find_by id: params[:blog_id]
    @blog.disliked_by current_user
    respond_to do |format|
      format.html
      format.js{render :vote}
    end
  end
end
