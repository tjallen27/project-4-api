class PrintsController < ApplicationController
  before_action :set_print, only: [:show, :update, :destroy]

  # GET /prints
  def index
    @prints = Print.all

    render json: @prints
  end

  # GET /prints/1
  def show
    render json: @print
  end

  # POST /prints
  def create
    @print = Print.new(print_params)

    if @print.save
      render json: @print, status: :created, location: @print
    else
      render json: @print.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /prints/1
  def update
    if @print.update(print_params)
      render json: @print
    else
      render json: @print.errors, status: :unprocessable_entity
    end
  end

  # DELETE /prints/1
  def destroy
    @print.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_print
      @print = Print.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def print_params
      params.require(:print).permit(:title, :image, :height, :width, :medium, :price, :body, :user_id)
    end
end
