# frozen_string_literal: true

# require_relative '../app/models/fact.rb'

class FactsService
  def generate_facts(amount)
    Array.new(amount) { generate_single_random_fact }
  end

  private

  def generate_single_random_fact
    CuratedFactMaker.new.make
  end
end