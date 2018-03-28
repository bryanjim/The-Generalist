class EntriesController < ApplicationController

  def index
    @entry = Entry.all
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def create
    @entry = Entry.create(entry_params)
    if @entry.invalid?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def about
  end

  private
  def entry_params
    params.require(:entry).permit(:title, :body)
  end
end
