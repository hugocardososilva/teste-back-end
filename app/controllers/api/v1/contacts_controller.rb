module Api
  module V1
    class ContactsController < ApplicationController
      skip_before_action :verify_authenticity_token
      before_action :set_contact, only: [:show, :edit]

      # GET /contacts
      # GET /contacts.json
      def index
        @contacts = Contact.all
      end

      # GET /contacts/1
      # GET /contacts/1.json
      def show
      end

      # GET /contacts/new
      def new
        @contact = Contact.new
      end

      # GET /contacts/1/edit
      def edit
      end

      # POST /contacts
      # POST /contacts.json
      def create
        @contact = Contact.new(contact_params)

        respond_to do |format|
          if @contact.save
            format.json { render json: @contact }
          else
            format.json { render json: @contact.errors, status: :unprocessable_entity }
          end
        end
      end


      private
      # Use callbacks to share common setup or constraints between actions.
      def set_contact
        @contact = Contact.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def contact_params
        params.require(:contact).permit(:name, :email)
      end
    end
  end
end
