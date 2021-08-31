class ChildPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    user.admin?
    return true
  end

  def update?
    if @child.daycare_id == user.daycare_id && user.admin?
      return true
    end
  end

  def destroy?
    if @child.daycare_id == user.daycare_id && user.admin?
      return true
    end
  end
end
