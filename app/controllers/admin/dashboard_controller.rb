class Admin::DashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_admin

  def index
    @project_totals = Project.includes(:allocations).map do |project|
      {
        project: project,
        total: project.allocations.sum(:amount)
      }
    end
  end

  private

  def ensure_admin
    redirect_to root_path, alert: "Access denied." unless current_user&.admin?
  end
end
