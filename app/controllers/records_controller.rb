class RecordsController < ApplicationController
  def index
    @records = Record.all

    respond_to do |format|
      format.html # index.html.erb
      format.csv { send_data @records.to_csv, filename: "report-#{Date.today}.csv" }
      format.xls {
        send_data @records.to_xls, :type => "text/xls; charset=utf-8; header=present", :filename => "report-#{Date.today}.xls"
      }
    end
  end

  def new
    @record = Record.new
  end

  def create
    @record = Record.new(record_params)
    if @record.save
      flash[:success] = 'You\'ve successfully created a new record.'
      redirect_to records_path
    else
      flash.now[:error] = 'Oops! Something went wrong. Make sure you\'ve filled all the fields properly.'
      render 'new'
    end
  end

  def edit
    @record = Record.find(params[:id])
  end

  def update
    @record = Record.find(params[:id])
    if @record.update(record_params)
      flash[:success] = 'Your record was successfully updated.'
      redirect_to records_path
    else
      flash.now[:error] = 'Oops! Something went wrong. Make sure you\'ve filled all the fields properly.'
      render 'edit'
    end
  end

  def destroy
    Record.find(params[:id]).destroy
    flash[:success] = 'Your record was successfully deleted.'
    redirect_to records_path
  end

  private

    def record_params
      params.require(:record).permit(:reporter, :email, :description)
    end

end
