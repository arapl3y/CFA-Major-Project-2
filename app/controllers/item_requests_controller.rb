class ItemRequestsController < ApplicationController
  def new
    @item_request = ItemRequest.new
  end

  def create
    @item_request = ItemRequest.new
    @item_request.user_id = current_user.id
    @item = Item.friendly.find(params[:id])
    @item_request.item_id = @item.id

    if @item_request.save
      flash[:notice] = "Item has been requested."
      redirect_to dashboard_path
    else
      flash[:notice] = "Item cannot be requested at this time."
      redirect_to @item
    end
  end
end
