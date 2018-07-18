# frozen_string_literal: true

class CuratedFactMaker < BaseFactMaker
  def make
    fact.new
  end
end
