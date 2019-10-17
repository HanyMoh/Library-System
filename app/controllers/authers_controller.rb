class AuthersController < ApplicationController
  before_action :set_auther, only: [:show, :update, :destroy]

  # GET /authers
  def index
    @authers = Auther.all

    render json: @authers
  end

  # GET /authers/1
  def show
    render json: @auther
  end

  # POST /authers
  def create
    @auther = Auther.new(auther_params)

    if @auther.save
      render json: @auther, status: :created, location: @auther
    else
      render json: @auther.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /authers/1
  def update
    if @auther.update(auther_params)
      render json: @auther
    else
      render json: @auther.errors, status: :unprocessable_entity
    end
  end

  # DELETE /authers/1
  def destroy
    @auther.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auther
      @auther = Auther.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def auther_params
      params.require(:auther).permit(:title)
    end
end
