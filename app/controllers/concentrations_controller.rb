class ConcentrationsController < ApplicationController

  def index
    @concentrations = Concentration.all
  end

  def show
    @concentration = Concentration.find_by(id: params[:id])
  end

  def new
  end

  def create
    @concentration = Concentration.new
    @concentration.name = params[:name]

    if @concentration.save
      redirect_to concentrations_url, notice: "Concentration created successfully."
    else
      render 'new'
    end
  end

  def edit
    @concentration = Concentration.find_by(id: params[:id])
  end

  def update
    @concentration = Concentration.find_by(id: params[:id])
    @concentration.name = params[:name]

    if @concentration.save
      redirect_to concentrations_url, notice: "Concentration updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @concentration = Concentration.find_by(id: params[:id])
    @concentration.destroy

    redirect_to concentrations_url, notice: "Concentration deleted."
  end
end
