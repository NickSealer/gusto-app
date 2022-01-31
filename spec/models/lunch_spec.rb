# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Lunch, type: :model do
  describe 'validates db indexes' do
    it { is_expected.to have_db_index(:scheduled_to) }
  end

  describe 'ActiveRecord validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:scheduled_to) }
  end
end
