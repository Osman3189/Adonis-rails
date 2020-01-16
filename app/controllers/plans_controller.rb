class PlansController < ApplicationController


    def new
      @plan = Plan.new

    end

    def create
      Plan.create plan_params

      redirect_to plans_path


    end

    def index
      @plan = Plan.all
    end

    def show
      @plan = Plan.find params[:id]
    end

    def edit
    @plan = Plan.find params[:id]
    end

    def update

    redirect_to plan_path and return unless @user == @trainer

    plan = Plan.find params[:id]
    plan.update plan_params

    redirect_to plan_path(plan.id)

    end


    def destroy
    end

    private

    def plan_params

      params.require(:plan).permit( :name, :schedule)

    end


  end
