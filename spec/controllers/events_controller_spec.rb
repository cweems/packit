require 'rails_helper'

RSpec.describe EventsController, type: :controller do
  let(:user) { create :user }
  let(:teacher) { create :teacher }
  let(:workspace) { create :workspace }

  context 'POST' do
    let!(:project) { create :project }

    before do
      post :create, params: {size: 20, duration: 30}
    end

    it 'responds with status code 200' do
      expect(response.status).to eq(200)
    end

    it 'saves a new event record' do
      event = Event.last
      expect(event[:size]).to eq(20)
      expect(event[:duration]).to eq(30)
    end
  end
end
