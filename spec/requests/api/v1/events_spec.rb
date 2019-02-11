require 'rails_helper'

RSpec.describe Api::V1::EventsController, type: :request do

  describe "GET Events" do

    before do
      get "/api/v1/events"
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST Events" do
    let(:event_params) { { name: "A event", description: "A description event", lat: "-32132312", lng: "-2131321321" } }

    context 'when the params are valid' do
      before do
         post "/api/v1/events", params: event_params
      end

      it "returns status code 201" do
        expect(response).to have_http_status(201)
      end
    end

  end

  describe 'DELETE Events' do

    before do
     delete "/api/v1/events/:id", params: { id: 1}
    end

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end


end
