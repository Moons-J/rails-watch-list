class ListsController < ApplicationController
  before_action :find_all_lists

  def index
  end

  def new
    @list = List.new

  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to lists_path
    else
      render :new
    end
  end

  def show
    @list = List.find(params[:id])
  end

  private

  def find_all_lists
    @lists = List.all
  end

  def list_params
    params.require(:list).permit(:name, :list_url)
  end
end
