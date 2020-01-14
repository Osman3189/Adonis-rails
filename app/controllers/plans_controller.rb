class PlansController < ApplicationController


    def new
    end

    def create


    end

    def index
      @plan = Plan.all
    end

    def show
      @user = User.find params[:id]
    end

    def edit

    end

    def update
    end


    def destroy
    end

  end
