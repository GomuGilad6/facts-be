# frozen_string_literal: true

class CuratedFactMaker < BaseFactMaker

  def make
    #curated_fact = CuratedFact.fetch_random(1).first
    curated_facts = CuratedFact.all.order(id: :desc)
    curated_fact = curated_facts.sample #[rand(curated_facts.count)]
    Fact.new(fact: curated_fact.fact_desc, type: FACT)
  end
end