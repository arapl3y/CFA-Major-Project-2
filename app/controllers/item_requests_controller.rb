class ItemRequestsController < ApplicationController

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

  def update

    @item_request = ItemRequest.find_by(user_id: params[:item_request][:user_id], item_id: params[:item_request][:item_id])

    @item_request.toggle(:approved)

    if @item_request.save && @item_request.approved?
      flash[:notice] = "Item request approved."
      redirect_to dashboard_path
    elsif @item_request.save && !@item_request.approved
      flash[:notice] = "Item request disapproved."
      redirect_to dashboard_path
    else
      flash[:notice] = "Item cannot be approved at this time."
      redirect_to :back
    end
  end
end
