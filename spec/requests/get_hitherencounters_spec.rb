require 'rails_helper'

RSpec.describe 'HitherEncounters', type: :request do
  describe 'GET /index' do
    before do
      get '/api/v1/hitherencounters'
    end
    
    it 'returns all posts' do
      expect((JSON.parse(response.body)).size).to eq(8)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(:success)
    end
  end
end