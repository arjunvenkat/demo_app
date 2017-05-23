class SectionsController < ApplicationController

  def index
    @sections = Section.all
  end

  def show
    @section = Section.find_by(id: params[:id])
  end

  def new
  end

  def create
    @section = Section.new
    @section.name = params[:name]
    @section.date = params[:date]

    if @section.save
      redirect_to sections_url, notice: "Section created successfully."
    else
      render 'new'
    end
  end

  def edit
    @section = Section.find_by(id: params[:id])
  end

  def update
    @section = Section.find_by(id: params[:id])
    @section.name = params[:name]
    @section.date = params[:date]

    if @section.save
      redirect_to sections_url, notice: "Section updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @section = Section.find_by(id: params[:id])
    @section.destroy

    redirect_to sections_url, notice: "Section deleted."
  end
end
