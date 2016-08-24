class DinnersController < ApplicationController
  
  def index
    @dinners = Dinner.all
  end

  def show
    @dinner = Dinner.find(params[:id])
  end

  def new
    @dinner = Dinner.new
  end

  def edit
    @dinner = Dinner.find(params[:id])
  end

  def create
    @dinner = Dinner.new(dinner_params)
    respond_to do |f|
      if @dinner.save
        f.html { redirect_to @dinner, notice: 'you have successfully create  your dinner.'}
      else
        f.html {render :new}
      end
    end
  end

  def update
    @dinner = Dinner.find(params[:id])
    respond_to do |f|
      if @dinner.save
        f.html {redirect_to @dinner, notice: 'you have successfully updated your dinner.'}
      else
        f.html {render :edit}
      end
    end
  end

  def destroy
    @dinner.destroy
    respond_to do |f|
      f.html {redirect_to dinneres_url, notice: 'you have successfully canceled your dinner.'}
    end
  end
private

  def dinner_params
    params.require(:dinner).permit(:dish_type, :dish, :dish_description)
  end
end


