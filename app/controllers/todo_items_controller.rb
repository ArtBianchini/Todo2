class TodoItemsController < ApplicationController

	def create
		@todo_list = TodoList.find(params[:todo_list_id])
		@todo_item= @todo_list.todo_item.create(params[:todo_item].permit(:content))
	end 
end
