class ToolsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]


  def index
    @tools = Tool.all
  end

  def show
    @tool = Tool.find(params[:id])
  end

  def new
    @tool = Tool.new
  end

  def create
    @tool = Tool.new(tool_params)
    @tool.user = current_user
    if @tool.save!
      redirect_to tools_path
    else
      render :new
    end
  end

  def edit
    @tool = Tool.find(params[:id])
  end

  def update
    @tool = Tool.find(params[:id])
    if @tool.update!(tool_params)
      redirect_to tools_path
    else
      render :update
    end
  end

  def destroy
  end

  private

    def tool_params
    params.require(:tool).permit(:name, :price_per_day, :description, :place, )
  end
end
