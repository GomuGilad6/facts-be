# frozen_string_literal: true

class CuratedFactMaker < BaseFactMaker

  def make
    CuratedFact.fetch_random(1)
  end
end