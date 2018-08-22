class ReservationPolicy < ApplicationPolicy

  def new?
    true
  end

  def create?
    return new?
  end

  def destroy?
    recor.user == user
  end

  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end
end
