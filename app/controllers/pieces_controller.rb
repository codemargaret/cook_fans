class PiecesController < ApplicationController
  def index
    @pieces = Piece.all
  end

  def show
    @piece = Piece.find(params[:id])
  end

  def new
    @piece = Piece.new
  end

  def create
    @piece = Piece.new(piece_params)
    if @piece.save
      redirect_to pieces_path
    else
      render :new
    end
  end
end
