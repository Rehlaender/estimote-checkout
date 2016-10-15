class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]

  def index
    @lessons = Lesson.all
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      redirect_to lessons_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @lesson.update_attributes(lesson_params)
      redirect_to lessons_path
    else
      render 'edit'
    end
  end

  def destroy
    if @lesson.destroy
      redirect_to lessons_path
    else
      redirect_to lessons_path
    end
  end

  private
    def set_lesson
      @lesson = Lesson.find(params[:id])
    end

    def lesson_params
      params.require(:lesson).permit(:name, :hour, :classroom, :user_id)
    end
end