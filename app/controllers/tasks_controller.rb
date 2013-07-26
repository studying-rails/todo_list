class TasksController < ApplicationController
  def index
    @items = Task.order('created_at DESC').all
  end

  def create
    Task.create! params[:task]
    redirect_to action: 'index'
  end

  def destroy
    Task.where(id: params[:id]).destroy_all
    redirect_to action: 'index'
  end
end

