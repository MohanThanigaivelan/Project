class CustomerFormController < ApplicationController
  def show
    @customer = CustomerForm.find(params[:id])
  end
	def new
  end

  def create
  # render plain: params[:customer_form].inspect
   @customer = CustomerForm.new(customer_params)
  	 @customer.save
  	 redirect_to @customer
  end
  private
  def customer_params
    params.require(:customer_form).permit(:name, :DOB,:Address,:Phone_no,:Photo)
  end
end
