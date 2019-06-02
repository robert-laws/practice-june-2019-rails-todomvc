# frozen_string_literal: true

class ItemsController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @item = @list.items.build(item_params)

    if @item.save
      flash[:notice] = 'success|The item was successfully saved to the database.'
      redirect_to list_path(@list)
    else
      flash[:notice] = 'danger|The item encountered an error.'
      redirect_to list_path(@list)
    end
  end

  def update
    @item = Item.find(params[:id])

    redirect_to list_path(@item.list) if @item.update_attributes(item_params)
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    redirect_to list_path(@item.list)
  end

  private

  def item_params
    params.require(:item).permit(:description, :status)
  end
end
