class TasksController < ApplicationController
    def index
        @tasks = Task.all   
    end

    def show
        @task = Task.find(params[:id])
    end

    def new
        @tasks = Task.new
    end

    def create
        task = Task.new(task_params)
        task.save
        redirect_to tasks_path
      end
    
      def edit
      end
    
      def update
        @task.update(task_params)
        redirect_to task_path(@task)
      end
    
      def destroy
        @tasks.destroy
        redirect_to task_path
      end
    
      private
    
      def set_task
        @task = Task.find(params[:id])
      end
    
      def task_params
        params.require(:task).permit(:title, :details, :completed)
      end
    end
    
