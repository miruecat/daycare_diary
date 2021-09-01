class DaycarePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    if record.daycare_id == user.id
      return true
    end
  end
end
