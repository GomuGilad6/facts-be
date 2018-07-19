class SlackFactMaker < BaseFactMaker
  FACTS = [
    Fact.new(fact: '“It’s not a bug, it’s a Fisher” (reference to @Isaac Fisher)', type: SLACK),
    Fact.new(fact: '“@Ron Nahshon "@Dovrat Gilboa didn\'t even want to join!" @Dovrat Gilboa "Snitches get stitches"', type: SLACK),
    Fact.new(fact: '@Tomer Desser “Dresser not like שידה, Dresser like מתלבש”', type: SLACK),
    Fact.new(fact: '@Avishai Lippner about @Limor Mekaiten: Stack Overflow was her only friend...', type: SLACK),
    Fact.new(fact: '@Ofer Schonberger ישנתי כל כך טוב, כמו אלוהים בשואה', type: SLACK),
    Fact.new(fact: 'A tribe has one chief. Means we have a whole nation.', type: SLACK),
    Fact.new(fact: '@Daniel Boskys "Didn\'t you know that Orange is the new black?" #NetflixAndChill', type: SLACK),
    Fact.new(fact: '@Dovrat Gilboa: מה אני נראית לך, מרגול? מה אתה מביא לי בוציאטו', type: SLACK)].freeze
  def make
    FACTS.sample
  end
end