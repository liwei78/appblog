class AppsController < ApplicationController
  
  def index
    @apps = App.find(:all)
    respond_to do |format|
      format.html
    end
  end


  def show
    @app = App.find(params[:id])
    @page_title = @app.title
    respond_to do |format|
      format.html
    end
  end
  
end
