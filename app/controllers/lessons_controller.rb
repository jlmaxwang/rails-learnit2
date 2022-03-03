class LessonsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_lesson, only:[:show, :edit, :update, :destroy]
  def index
    if params[:query].present?
      @lessons = policy_scope(Lesson).search_by_title_and_description_and_category(params[:query])
    else
      @lessons = policy_scope(Lesson)
    end
    respond_to do |format|
      format.html
      format.json { render json: { lessons: @lessons } }
    end
  end

  def show
    # @session = Session.new(lesson: @lesson)
  end

  def new
    @lesson = current_user.lessons.new
    authorize @lesson
  end

  def create
    @lesson = current_user.lessons.new(lesson_params)
    # @lesson.user = current_user
    authorize @lesson
    if @lesson.save
      redirect_to lesson_path(@lesson), notice: 'Your lesson was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @lesson.update(lesson_params)
      redirect_to root_path, notice: 'Lesson was successfully updated'
    else
      render :edit
    end
  end

  def destroy
    @lesson.destroy
    redirect_to lessons_path, notice: 'Lesson was successfully deleted'
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:id])
    authorize @lesson
  end

  def lesson_params
    params.require(:lesson).permit(:title, :category, :rating, :user_id, :photo, :price, :description)
  end
end
