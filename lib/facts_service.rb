# frozen_string_literal: true

# require_relative '../app/models/fact.rb'

class FactsService
  def generate_facts(amount)
    facts = Array.new
    facts << CuratedFactMaker.new.make
    facts << NumberOfBuildingsPerCountryFactMaker.new.make
    facts << CheapestDeskFactMaker.new.make
    facts.sample(3)
  end
end