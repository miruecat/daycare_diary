class DaycarePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    if current_user.daycare_id == @daycare_id
      return true
    end
  end
end
