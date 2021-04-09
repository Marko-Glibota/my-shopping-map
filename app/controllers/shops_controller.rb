class ShopsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_shop, only: [:show, :edit, :update, :destroy]

  def index
    @shops = Shop.all
  end

  def show
  end

  def new
    @shop = Shop.new
    @shop.user = current_user
  end

  def create
    @shop = Shop.new(shop_params)
    @shop.user = current_user
    if @shop.save
      redirect_to shop_path(@shop)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @shop.update(shop_params)
      redirect_to shop_path(@shop)
    else
      render :edit
    end
  end

  def destroy
    @shop.destroy
    redirect_to shops_path
  end

  private

  def set_shop
    @shop = Shop.find(params[:id])
  end

  def shop_params
    params.require(:shop).permit(:name, :address)
  end
end
