# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Api::V1::Trackers', type: :request do
  describe 'Post #create' do
    let(:permit_params) do
      {
        tracker: {
          uuid: '807b95ec-13f9-4afd-a31d-11c2b4da515d',
          page: 'Repellat',
          moment: '2020-10-04 19:58:25'
        }
      }
    end
    it 'creates a tracker with the correct attributes' do
      expect { post '/api/v1/trackers', params: permit_params }.to change(Tracker, :count).by(+1)
      expect(response).to have_http_status :created
    end
  end
end
