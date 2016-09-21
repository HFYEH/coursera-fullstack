class TodoItemsController < ApplicationController
  def index
    @todo_items = TodoItem.all
    @count = TodoItem.where("completed = ?", true).count
  end
  
  def new
    @todo_item = TodoItem.new
  end
  
  def show
    @todo_item = TodoItem.find(params[:id])
  end
  
  def create
    @todo_item = TodoItem.new(todo_item_params)
    
    if @todo_item.save
      redirect_to todo_items_url, notice: "Todo item was successfully created."
    else
      render :new
    end
    
    #respond_to do |format|
    #  if @todo_item.save
        #format.html { redirect_to @todo_item, notice: "Todo item was successfully created."}
        #format.json { render :show, status: :created, location: @todo_item }
    #  else
    #    render :new
    #  end
    #end
  end
  
  def edit
    @todo_item = TodoItem.find(params[:id])
  end
  
  private
    def todo_item_params
      params.require(:todo_item).permit(:title, :description, :due_date, :completed)
    end
end
