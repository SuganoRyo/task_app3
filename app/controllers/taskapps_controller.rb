class TaskappsController < ApplicationController
  
  def index
    @taskapps = Taskapp.all
  end
  
  def new
    @taskapp = Taskapp.new 
  end
 
  def create
     @taskapp = Taskapp.new(params.require(:taskapp).permit(:title, :start, :end, :all, :memo))
      if @taskapp.save
        flash[:notice] = "スケジュールを登録しました"
        redirect_to :taskapps 
      else
        render :new
      end
  end
 
  def show
    @taskapp = Taskapp.find(params[:id])
  end
 
  def edit
    @taskapp = Taskapp.find(params[:id])
  end
 
  def update
    @taskapp = Taskapp.find(params[:id])
      if @taskapp.update(params.require(:taskapp).permit(:title, :start, :end, :all, :memo))
        flash[:notice] = "スケジュールを更新しました"
        redirect_to :taskapps
      else
        render "edit"
      end
  end
 
  def destroy
     @taskapp = Taskapp.find(params[:id])
      @taskapp.destroy
      flash[:notice] = "スケジュールを削除しました"
      redirect_to :taskapps
  end
end
