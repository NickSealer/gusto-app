# frozen_string_literal: true

require 'rails_helper'

RSpec.describe LunchesController, type: :request do
  let(:lunch) { create(:lunch) }

  describe 'GET /' do
    it 'renders the index view' do
      lunch
      get root_url
      expect(response).to have_http_status(:ok)
      expect(assigns[:lunches]).to be_a(ActiveRecord::Relation)
      expect(assigns[:lunches].last).to be_a(Lunch)
    end
  end
end
