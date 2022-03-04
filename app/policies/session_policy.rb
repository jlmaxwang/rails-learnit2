class SessionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    record.user == user  # Anyone can view a session
  end
  def new?
    true
  end

  def edit?
    true
  end

  def create?
    record.user == user  # only lesson creator can create a session
  end

  def update?
    record.user == user  # Only session creator can update it
  end

  def destroy?
    record.user == user  # Only session creator can update it
  end

  def confirmation?
    true
  end
end
