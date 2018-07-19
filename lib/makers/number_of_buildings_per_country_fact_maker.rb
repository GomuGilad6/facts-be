class NumberOfBuildingsPerCountryFactMaker
  def make
    countries_payload = LocationsService.call_api('countries')
    countries = countries_payload.with_indifferent_access[:countries]
    #countries = countries[:countries]
    index = rand(countries.size - 1)
    num_of_buildings = countries[index][:markets][0][:buildings].size
    country_name = countries[index][:name]
    fact = "There are #{num_of_buildings} buildings in #{country_name}"
    Fact.new(fact: fact, type: 'NumberOfBuildingsPerCountry')
  end
end