# frozen_string_literal: true

module Api
  module V1
    class TrackersController < ApplicationController
      skip_before_action :verify_authenticity_token
      def create
        @tracker = Tracker.new(tracker_params)
        @tracker.moment = DateTime.now
        if @tracker.save
          render 'show', status: :created, locals: { tracker: @tracker }
        else
          render json: @tracker.errors, status: :unprocessable_entity
        end
      end



      def tracker_params
        params.require(:tracker).permit(
          :uuid, :page
        )
      end
    end
  end
end
