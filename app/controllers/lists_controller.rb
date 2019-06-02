# frozen_string_literal: true

class ListsController < ApplicationController
  def index
    @list = List.new
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    # @item = @list.items.build
    @item = Item.new
  end

  def create
    @list = List.new(list_params)

    if @list.save
      flash[:notice] = 'The list was successfully saved to the database.'
      redirect_to list_path(@list)
    else
      @lists = List.all
      render :index
    end
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
