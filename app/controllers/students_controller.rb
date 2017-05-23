class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by(id: params[:id])
  end

  def new
  end

  def create
    @student = Student.new
    @student.name = params[:name]
    @student.image = params[:image]

    if @student.save
      redirect_to students_url, notice: "Student created successfully."
    else
      render 'new'
    end
  end

  def edit
    @student = Student.find_by(id: params[:id])
  end

  def update
    @student = Student.find_by(id: params[:id])
    @student.name = params[:name]
    @student.image = params[:image]

    if @student.save
      redirect_to students_url, notice: "Student updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @student = Student.find_by(id: params[:id])
    @student.destroy

    redirect_to students_url, notice: "Student deleted."
  end
end
