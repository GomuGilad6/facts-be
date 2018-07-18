require 'rails_helper'

RSpec.describe 'FactsService' do
  describe '#generate_facts' do
    it 'returns facts according to the amount' do
      result = FactsService.new.generate_facts(3)

      expect(result.count).to eq(3)
    end
  end
end