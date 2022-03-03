class UserPolicy < ApplicationPolicy
  # class Scope < Scope
  #   def resolve
  #     scope.all
  #   end
  # end

  def show?
    record.user == user  # Anyone can view a User
  end

  def new?
    record.user == user
  end

  def edit?
    record.user == user
  end

  def create?
    record.user == user  # only lesson creator can create a User
  end

  def update?
    record.user == user  # Only User creator can update it
  end

  def destroy?
    record.user == user  # Only User creator can update it
  end
end
