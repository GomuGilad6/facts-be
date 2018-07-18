require 'rails_helper'

RSpec.describe FactsService do
  describe '#generate_facts' do
    it 'returns facts according to the amount' do
      result = FactsService.new.generate_facts(3)

      expect(result.count).to eq(3)

      3.times do |i|
        expect(result[i]).to be_an_instance_of(Fact)
        expect(result[i].type).to eq('curated')
      end
    end
  end
end