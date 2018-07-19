class MarketComingSoonFactMaker < BaseFactMaker
  def make
    markets = LocationsService.call_api('markets')['markets']
    coming_soon_markets = markets.select { |m| m['is_coming_soon'] }
    coming_soon_market = coming_soon_markets.sample

    coming_soon_city = coming_soon_market['name']
    coming_soon_country = coming_soon_market['country']['name']

    fact_text = "WeWork is about to move into #{coming_soon_city}, #{coming_soon_country}"
    Fact.new(fact: fact_text, type: FACT)
  end
end