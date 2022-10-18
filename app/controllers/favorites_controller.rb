class FavoritesController < ApplicationController

  def create
    @blog = Blog.find(params[:blog_id])
    current_user.favorites.create(blog_id: params[:blog_id]).save
  end

  def destroy
    @blog = Blog.find(params[:blog_id])
    current_user.favorites.find_by(id: params[:id]).destroy
  end
end
