class SalesController < ApplicationController

  # chamada da view sales/index
  def index
    @sales = Sale.order(id: :desc)
    @saleContactsCount = Sale.where(status: 1).count()
    @saleContactsSumPrice = Sale.where(status: 1).sum(:price)
  end


  # Create new sale
  def create
    # render plain: params[:sales].inspect
    @sale = Sale.new sale_params
    @sale.save
    redirect_to '/sales'
  end


  private

  def sale_params
    params.require(:sale).permit([:name,:price,:status,:description])
  end

end
