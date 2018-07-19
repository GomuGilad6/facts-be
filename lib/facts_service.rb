# frozen_string_literal: true

# require_relative '../app/models/fact.rb'

class FactsService
  def generate_facts(amount)
    #facts = Array.new(amount-1) { generate_single_random_fact}
    facts = Array.new
    facts << CuratedFactMaker.new.make
    facts << CuratedFactMaker.new.make
    facts << NumberOfBuildingsPerCountryFactMaker.new.make
    facts.shuffle
  end

  private

  def generate_single_random_fact
    CuratedFactMaker.new.make
  end
end