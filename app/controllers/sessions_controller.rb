class SessionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_session, only:[:edit, :update, :destroy]
  before_action :set_lesson

  def index
    # @sessions = Session.all
    @sessions = policy_scope(Session)
  end

  def new
    # @session = Session.new
    @session = current_user.sessions.new
    authorize @session
  end

  def create
    # @session = Session.new(session_params)
    # @session.lesson = @lesson
    # @session.lesson.user = @user
    # if @session.save
    #   redirect_to lesson_sessions_path(@lesson)
    # else
    #   render :new
    # end
    @session = current_user.sessions.new(session_params)
    authorize @session
    if @session.save
      redirect_to lesson_sessions_path(@lesson), notice: 'Session created'
    else
      render :new
    end
  end

  def edit
  end

  def update
    # if @session.update(session_params)
    #   redirect_to lesson_path(@lesson)
    # else
    #   render :update
    # end
    if @session.update(session_params)
      redirect_to lesson_path(@lesson), notice: 'Session updated!'
    else
      render :edit
    end
  end

  def destroy
    @session.destroy
    redirect_to lesson_path(@lesson), notice: "Session deleted"
  end

  def confirmation
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:lesson_id])
  end

  def set_session
    if @session.nil?
      flash.alert = 'No session for this lesson yet'
    else
      @session = Session.find(params[:lesson_id])
    end
  end

  def session_params
    params.require(:session).permit(:schedule, :lesson_id, :user_id)
  end
end
