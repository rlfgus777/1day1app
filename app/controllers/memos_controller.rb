class MemosController < ApplicationController
  # Create
  def new
    @memo = Memo.new
  end

  def create
    @memo = Memo.new
    @memo.user_id = params[:memo][:user_id]
    @memo.title   = params[:memo][:title]
    @memo.content = params[:memo][:content]
    if @memo.save
      #redirect_to memo_path(@memo)
      redirect_to @memo
    else
      redirect_to :back
    end
  end
# Read
  def show
    @memo = Memo.find(params[:id])
  end

  def index
    @memos = Memo.all
  end

  # Update
  def edit
    @memo = Memo.find(params[:id])
  end

  def update
    @memo = Memo.find(params[:id])
    @memo.user_id = params[:memo][:user_id]
    @memo.title   = params[:memo][:title]
    @memo.content = params[:memo][:content]
    if @memo.save
      #redirect_to memo_path(@memo)
      redirect_to @memo
    else
      redirect_to :back
    end
  end

  # Destroy
  def destroy
    @memo = Memo.find(params[:id])
    @memo.destroy!
    redirect_to root_path
  end
end
