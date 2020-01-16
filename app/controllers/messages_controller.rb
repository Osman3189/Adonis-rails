class MessagesController < ApplicationController


      def new
        @message = Message.new
      end

      def create
        @message = Message.create message_params

        redirect_to messages_path


      end

      def index
        @messages = Message.all
      end

      def show
        @message = Message.find params[:id]
      end

      def edit
        @message = Message.find params[:id]
      end

      def update

      redirect_to message_path and return unless @user == @trainer

      message = Message.find params[:id]
      message.update message_params

      redirect_to message_path

      end


      def destroy

        message = Message.find params[:id]
        message.destroy

        redirect_to messages_path
      end

      private

      def message_params

        params.require(:message).permit( :title, :content)

      end


    end
