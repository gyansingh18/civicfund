class AllocationsController < ApplicationController
  before_action :authenticate_user!

  def new
    @projects = Project.all
  end

  def create
    if params[:allocations].blank?
      flash[:alert] = "Please allocate at least one amount."
      return redirect_to new_allocation_path
    end

    allocations = []
    total = 0

    params[:allocations].each do |project_id, amount_str|
      amount = amount_str.to_i
      next if amount <= 0

      total += amount
      allocations << { project_id: project_id, amount: amount }
    end

    if allocations.empty?
      flash[:alert] = "Please allocate at least one amount."
      redirect_to new_allocation_path
    elsif total > 1000
      flash[:alert] = "Allocation exceeds $1000!"
      redirect_to new_allocation_path
    else
      allocations.each do |data|
        Allocation.create!(
          user: current_user,
          project_id: data[:project_id],
          amount: data[:amount]
        )
      end
      redirect_to allocation_path(current_user.id)
    end
  end



  def show
    @allocations = current_user.allocations.includes(:project)
    @total = @allocations.sum(&:amount)
  end
end
