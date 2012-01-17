class HolidaysController < ApplicationController
  def index
    @holiday = Holiday.all
  end

  def show
    @holiday = Holiday.find(params[:id])
  end

  def new
    @holiday = Holiday.new 
  end

  def edit
    @holiday = Holiday.find(params[:id])
  end
  
  def destroy
    @holiday = Holiday.find(params[:id])
    @holiday.destroy
    redirect_to holiday_path
  end
  
  def create
    @holiday = Holiday.create(params[:holiday])
    flash[:notice] = "New Holiday Created"
    redirect_to root_url
  end
  
  def update
    @holiday = Holiday.find(params[:id])
    if @holiday.save
      @holiday.update_attributes(params[:holiday])
      flash[:notice] = "Holiday updated"
      redirect_to @holiday
    else
      flash[:notice] = "Unsuccessful attempt"
      redirect_to edit_holiday_path
    end
  end

end
