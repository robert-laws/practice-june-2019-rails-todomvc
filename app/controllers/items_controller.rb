class ItemsController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @item = @list.items.build(item_params)

    if @item.save
      flash[:notice] = 'The item was successfully saved to the database.'
      redirect_to list_path(@list)
    else
      render "lists/show"
    end
  end

  def update
    @item = Item.find(params[:id])

    if @item.update_attributes(item_params)
      redirect_to list_path(@item.list)
    end
  end

  private

  def item_params
    params.require(:item).permit(:description, :status)
  end
end
