class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  include Pundit
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  def after_sign_in_path_for(resource)
    if current_user.role == "employee"
      stored_location_for(resource) || children_path
    elsif current_user.role == "parent"
      stored_location_for(resource) || child_path(current_user.parenthoods.first.child)
    end
  end                        
end
