class TrackersController < ApplicationController

  def index
    @trackers = Tracker.order(moment: :desc).limit(50)
  end
end
