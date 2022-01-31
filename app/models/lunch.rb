# frozen_string_literal: true

class Lunch < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :scheduled_to, presence: true
end
