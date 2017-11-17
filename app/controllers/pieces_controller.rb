class PiecesController < ApplicationController
  def index
    @pieces = Piece.all
    if params[:sort] == "alpha"
      @pieces = Piece.sort_alpha
    elsif params[:sort] == "date"
        @pieces = Piece.sort_date
    else
      @pieces = Piece.all
    end
  end

  def show
    @piece = Piece.find(params[:id])
    @user = @piece.user
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

  def edit
    @piece = Piece.find(params[:id])
    @user = @piece.user
  end

  def update
    @piece = Piece.find(params[:id])
    @user = @piece.user
    if @piece.update(piece_params)
      redirect_to user_piece_path(@user, @piece)
    else
      render :edit
    end
  end

  def destroy
    @piece = Piece.find(params[:id])
    @user = @piece.user
    @piece.destroy
    redirect_to user_path(@user)
  end

private
  def piece_params
    params.require(:piece).permit(:title, :artist, :created, :image, :genre, :user_id)
  end
end
