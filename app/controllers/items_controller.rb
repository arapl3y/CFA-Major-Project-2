class ItemsController < ApplicationController
  before_action :find_item, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @items = Item.all.order(created_at: :desc)
  end

  def home
  end

  def dashboard
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
      render 'new'
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
    redirect_to root_path
  end

  private

  def item_params
    params.require(:item).permit(:title, :description, :document)
  end

  def find_item
    @item = Item.friendly.find(params[:id])
  end
end
