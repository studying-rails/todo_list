class TodoItemsController < ApplicationController
  def index
    @items = TodoItem.order('created_at DESC').all
  end

  def create
    TodoItem.create! params[:todo_item]
    redirect_to action: 'index'
  end

  def destroy
    TodoItem.where(id: params[:id]).destroy_all
    redirect_to action: 'index'
  end
end

