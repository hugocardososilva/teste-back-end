# frozen_string_literal: true

module Api
  module V1
    class TrackersController < ApplicationController
      def create
        @tracker = Tracker.create(tracker_params)
        render 'show', status: :created, locals: {tracker: @tracker}
      end

      private

      def tracker_params
        params.require(:tracker).permit(
          :uuid, :page, :moment
        )
      end
    end
  end
end
