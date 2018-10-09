class CustomerFormController < ApplicationController
   def index
    @customer = CustomerForm.all
  end

  def show
    @customer = CustomerForm.find(params[:id])
  end
	def new
  end

  def create
  # render plain: params[:customer_form].inspect
   @customer = CustomerForm.new(customer_params)
  
  if @customer.save
    redirect_to @customer
  else
    render 'new'
  end
  end

def destroy
  @customer = CustomerForm.find(params[:id])
  @customer.destroy
 
  redirect_to customer_form_index_path
end
  private
  def customer_params
    params.require(:customer_form).permit(:name, :DOB,:Address,:Phone_no,:Photo)
  end
end
