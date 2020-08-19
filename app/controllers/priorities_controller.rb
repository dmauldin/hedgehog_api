class PrioritiesController < ApplicationController
  before_action :set_priority, only: [:show, :update, :destroy]

  # GET /priorities
  def index
    @priorities = Priority.all

    render json: @priorities
  end

  # GET /priorities/1
  def show
    render json: @priority
  end

  # POST /priorities
  def create
    @priority = Priority.new(priority_params)

    if @priority.save
      render json: @priority, status: :created, location: @priority
    else
      render json: @priority.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /priorities/1
  def update
    if @priority.update(priority_params)
      render json: @priority
    else
      render json: @priority.errors, status: :unprocessable_entity
    end
  end

  # DELETE /priorities/1
  def destroy
    @priority.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_priority
      @priority = Priority.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def priority_params
      params.require(:priority).permit(:title)
    end
end
