# frozen_string_literal: true

class CuratedFactMaker < BaseFactMaker

  def make
    curated_fact = CuratedFact.fetch_random(1).first
    Fact.new(fact: curated_fact.fact_desc, type: 'FACT')
  end
end