class HolidaysController < ApplicationController
  def index
    login_required
    @holiday = Holiday.all
    
    @holiday = @holiday.paginate(:page => params[:page], :per_page => 20)  
    
  end

  def show
    login_required
    @holiday = Holiday.find(params[:id])
    
    respond_to do |format|
    format.html
    format.xml { render:xml => @holiday }
    format.atom
    end
    
  end

  def new
    login_required
    @holiday = Holiday.new
    if current_user.admin == true
    redirect_to holidays_path
    end 
  end

  def edit
    login_required
    @holiday = Holiday.find(params[:id])
    if current_user.id != @holiday.user.id || if current_user.admin == false
    redirect_to holidays_path
    end
    end
    
  end
  
  def destroy
    login_required
    @holiday = Holiday.find(params[:id])
    @holiday.destroy
    redirect_to holidays_path
  end
  
  def create
    @holiday = Holiday.create(params[:holiday])
    @holiday.user_id = current_user.id
    if @holiday.save
    flash[:notice] = "New Holiday Created"
    redirect_to holidays_path
    else
    flash[:notice] = "Didn't create holiday"
    redirect_to holidays_path
    end
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
