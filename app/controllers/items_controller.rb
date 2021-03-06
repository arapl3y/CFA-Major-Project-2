class ItemsController < ApplicationController
  before_action :find_item, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:home, :plans]

  def index
    @search = Item.search(params[:q])
    @items = @search.result.paginate(per_page: 5, page: params[:page])
  end

  def home
    @basic_plan = Plan.find(1)
  end

  def plans
    @basic_plan = Plan.find(1)
    @premium_plan = Plan.find(2)
  end

  def dashboard
    @item = Item.new
    @items = current_user.items
    # users who have requested items that this informant has uploaded
    # @items = []
    # current_user.items.each do |item|
    #   @items.push(item.requesters)
    # end
    # @items_informant = current_user.items.first.requesters
    # items that a journalist user has requested []
    # @items_journalist = current_user.requested_items
  end

  def show
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user_id = current_user.id

    if @item.save
      flash[:notice] = "Item has been posted successfully."
      redirect_to @item
    else
      flash[:notice] = "Item cannot be posted at this time."
      redirect_to '/dashboard'
    end
  end

  def edit
    authorize @item
  end

  def update
    authorize @item
    if @item.update(item_params)
      redirect_to @item
    else
      render 'edit'
    end
  end

  def destroy
    @item.destroy
    redirect_to items_path
  end

  private

  def item_params
    params.require(:item).permit(:title, :description, :document)
  end

  def find_item
    @item = Item.friendly.find(params[:id])
  end
end
