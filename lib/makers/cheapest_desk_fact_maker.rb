class CheapestDeskFactMaker < BaseFactMaker
  def make
    groupings = LocationsService.call_api('geogroupings')
    groupings_buildings = groupings['buildings']

    min_desk_price = nil
    while min_desk_price.nil?
      building_entry = groupings_buildings.sample
      building = LocationsService.call_api("buildings/#{building_entry['id']}")['building']

      building_name = building['name']
      min_desk_price = building['min_desk_price']
    end

    fact_text = "At #{building_name}, you can get a desk for as cheap as #{min_desk_price} !"

    Fact.new(fact: fact_text, type: FACT)
  end
end