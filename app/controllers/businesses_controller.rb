class BusinessesController < ApplicationController

  def new
    @category = Category.find(params[:category_id])
    @business = @category.businesses.new
    render :new
  end

  def show
    @category = Category.find(params[:category_id])
    @business = Business.find(params[:id])
    render :show
  end

  def create
    @category = Category.find(params[:category_id])
    @business = @category.businesses.new(business_params)
    if @business.save
      flash[:notice] = "Business successfully added!"
      redirect_to category_path(@business.category)
    else
      render :new
    end
  end

  def edit
    @category = Category.find(params[:category_id])
    @business = Business.find(params[:id])
    render :edit
  end

  def update
    @category = Category.find(params[:category_id])
    @business = Business.find(params[:id])
     if @business.update(business_params)
       redirect_to category_path(@business.category)
     else
       render :edit
     end
   end

   def destroy
     @category = Category.find(params[:category_id])
     @business = Business.find(params[:id])
     @business.destroy
     redirect_to category_path(@business.category)
   end



  private
  def business_params
    params.require(:business).permit(:name, :address, :phone, :website, :hours)
  end
end
