class MoviesController < ApplicationController
  def bookmark
    @movie = Movie.find(params[:id])
    @bookmark = Bookmark.new
    @bookmark.movie = @movie
    @bookmark.list = List.find(params[:list_id])
    if @bookmark.save
      redirect_to list_path(params[:list_id])
    else
      render :show
    end
  end

  def unbookmark
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_path(params[:list_id])
  end
end
