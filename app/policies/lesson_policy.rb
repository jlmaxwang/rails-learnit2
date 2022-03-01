class LessonPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end

    def create?
      # adding user authorize of create a lesson
      true
    end

    def new?
      true
    end

    def show?
      true
      # changing to true
    end

    def edit?
      true
    end

    def update?
      # adding update
      true
    end

    def destroy?
      # adding destroy authorization
      true
    end
  end
end
