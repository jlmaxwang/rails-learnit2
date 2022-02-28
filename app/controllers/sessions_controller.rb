class SessionsController < ApplicationController
  before_action :set_session, only:[:show, :edit, :update, :destroy]
  before_action :set_lesson

  def index
    @sessions = Session.all
  end

  def show
  end

  def new
    @session = Session.new
  end

  def create
    @session = Session.new(session_params)
    @session.lesson = @lesson
    @session.lesson.user = @user
    if @session.save
      redirect_to
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @session.update(session_params)
      redirect_to lesson_path(@lesson)
    else
      render :update
    end
  end

  def destroy
    @session.destroy
    redirect_to lesson_
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:lesson_id])
  end

  def set_session
    @session = Session.find(params[:lesson_id])
  end

  def session_params
    params.require(:session).permit(:schedule, :lesson_id, :user_id)
  end
end
