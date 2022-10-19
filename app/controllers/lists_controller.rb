class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create

    list = List.new(list_params)

    list.save

    redirect_to '/top'

  end

  def show
    @list = List.find(params[:id])

  end

  def index
    @lists = List.all
  end

  private
    def list_params
      params.require(:list).permit(:title, :body)
    end
  end
