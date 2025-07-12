class Admin::DashboardController < ApplicationController
  def index
    @project_totals = Project.all.map do |project|
      {
        project: project,
        total: project.allocations.sum(:amount)
      }
    end
  end
end
