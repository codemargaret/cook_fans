class PiecesController < ApplicationController
  def index
    @pieces = Piece.all
  end

  def show
    @piece = Piece.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @piece = @user.pieces.new

    # redirect_to new_user_piece_path(@user_id)
  end

  def create
    # binding.pry
    @user = User.find(params[:user_id])
    @piece = @user.pieces.new(piece_params)

    if @piece.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

private
  def piece_params
    params.require(:piece).permit(:title, :artist, :created, :image, :genre, :user_id)
  end
end
