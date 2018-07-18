class FactsService
  def generate_facts(amount)
    Array.new(amount) { generate_single_random_fact }
  end

  private

  def generate_single_random_fact
    # TODO IMPLEMENT
    Fact.new(fact: 'test', type: 'testfact')
  end
end