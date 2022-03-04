class UsersController < ApplicationController
  before_action :set_user, only: :index
  # dashboard
  def index
    @user = policy_scope(current_user)
    @lessons_ids = @user.lesson_ids
    @lessons = Lesson.find(@lessons_ids)
  end

  private

  def set_user
    @user = current_user
  end
end
