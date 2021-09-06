class DaycarePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    if record.id == user.daycare_id
      return true
    end
  end
end
