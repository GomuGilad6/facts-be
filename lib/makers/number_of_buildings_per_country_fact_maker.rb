class NumberOfBuildingsPerCountryFactMaker < BaseFactMaker
  def make
    countries_payload = LocationsService.call_api('countries')
    countries = countries_payload.with_indifferent_access[:countries]
    index = rand(countries.size - 1)
    num_of_buildings = countries[index][:markets][0][:buildings].size
    country_name = countries[index][:name]
    fact = "WeWork has #{num_of_buildings} locations in #{country_name}"
    Fact.new(fact: fact, type: FACT)
  end
end