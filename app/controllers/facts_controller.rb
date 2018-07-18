# frozen_string_literal: true

class FactsController < ApplicationController
  def index
    facts = FactsService.new.generate_facts(3)
    facts_array = facts.map { |fact| { type: fact.type, fact: fact.fact, image: fact.image } } # TODO-OM Use Activemodel serializer
    render json: facts_array
  end
end
