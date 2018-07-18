# frozen_string_literal: true

class CuratedFactMaker
  include BaseFactMaker

  def make(amount)
    CuratedFact.fetch_random(amount)
  end
end