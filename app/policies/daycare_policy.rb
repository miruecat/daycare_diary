class DaycarePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    if user.daycare_id == record.id
      return true
    end
  end
end
