class SalesController < ApplicationController

  # chamada da view sales/index
  def index
    @sales = Sale.all
  end


  # Create new sale
  def create
    # render plain: params[:sales].inspect
    @sale = Sale.new sale_params
    @sale.save
  end


  private

  def sale_params
    params.require(:sale).permit([:name,:price,:status,:description])
  end

end
