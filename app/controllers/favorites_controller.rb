class FavoritesController < ApplicationController
  before_action :authenticate_user!
  def index
      @favorites = current_user.favorites
    end
    def create
      favorite = current_user.favorites.create(blog_id: params[:blog_id])
      redirect_to blogs_path, notice: "You have Liked #{favorite.blog.user.email}'s post"
    end
    def destroy
      favorite = current_user.favorites.find_by(id: params[:id]).destroy
      redirect_to blogs_path, notice: "You have Unliked #{favorite.blog.user.email}'s post"
    end
    def index
      @favorites = current_user.favorites
    end
  end