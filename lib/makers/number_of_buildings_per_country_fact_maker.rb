class NumberOfBuildingsPerCountryFactMaker < BaseFactMaker
  def make
    countries_payload = LocationsService.call_api('countries')
    countries = countries_payload.with_indifferent_access[:countries]
    country = countries.sample
    markets = country[:markets]
    num_of_buildings = markets.sum { |m| m['buildings'].count }
    country_name = country[:name]
    fact = "WeWork has #{num_of_buildings} locations in #{country_name}"
    Fact.new(fact: fact, type: FACT)
  end
end