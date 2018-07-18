#require_relative '../app/models/fact.rb'

class FactsService
  def generate_facts(amount)
    Array.new(amount) { generate_single_random_fact }
  end

  private

  def generate_single_random_fact
    # TODO IMPLEMENT - will fill this with facts once we have a concrete fact.
    Fact.new(fact: 'test', type: 'testfact')
  end
end