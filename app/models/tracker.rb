class Tracker < ApplicationRecord
  validates_presence_of :uuid, :page, :moment
end
