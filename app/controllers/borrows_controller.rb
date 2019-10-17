class BorrowsController < ApplicationController
  before_action :set_borrow, only: [:show, :update, :destroy]

  # GET /borrows
  def index
    @borrows = Borrow.all

    render json: @borrows
  end

  # GET /borrows/1
  def show
    render json: @borrow
  end

  # POST /borrows
  def create
    @borrow = Borrow.new(borrow_params)

    if @borrow.save
      render json: @borrow, status: :created, location: @borrow
    else
      render json: @borrow.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /borrows/1
  def update
    if @borrow.update(borrow_params)
      render json: @borrow
    else
      render json: @borrow.errors, status: :unprocessable_entity
    end
  end

  # DELETE /borrows/1
  def destroy
    @borrow.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_borrow
      @borrow = Borrow.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def borrow_params
      params.require(:borrow).permit(:user_id, :book_id, :st_date, :duration_by_days)
    end
end
