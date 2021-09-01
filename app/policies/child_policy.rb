class ChildPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.role == "employee"
        scope.where(daycare: user.daycare)
      else
        scope.where(daycare: nil)
      end
    end
  end

  def index?
    user.role == "employee"
  end

  def show?
    if record.daycare_id == user.daycare_id
      return true
    end
  end

  def create?
    user.admin?
    return true
  end

  def update?
    if record.daycare_id == user.daycare_id && user.admin?
      return true
    end
  end

  def destroy?
    if record.daycare_id == user.daycare_id && user.admin?
      return true
    end
  end
end
