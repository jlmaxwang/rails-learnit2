class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :lessons]
  def home
    @lessons = Lesson.all
  end
end
