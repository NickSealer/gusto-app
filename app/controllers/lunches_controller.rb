# frozen_string_literal: true

class LunchesController < ApplicationController
  before_action :lunches, only: %i[index]

  def lunches
    @lunches = Lunch.all
  end
end
