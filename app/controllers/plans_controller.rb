class PlansController < ApplicationController


    def new
    end

    def create


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
    @plan = Plan.find params[:id]


    redirect_to plan_path
    end


    def destroy
    end

  end
