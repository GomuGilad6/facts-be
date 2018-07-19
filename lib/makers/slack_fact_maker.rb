class SlackFactMaker < BaseFactMaker
  FACTS = [
    Fact.new(fact: '“It’s not a bug, it’s a Fisher” (reference to @Isaac Fisher)', type: SLACK),
    Fact.new(fact: '“@Ron Nahshon "@Dovrat Gilboa didn\'t even want to join!" \n @Dovrat Gilboa "Snitches get stitches"', type: SLACK),
    Fact.new(fact: '@Tomer Desser “Dresser not like שידה, Dresser like מתלבש”', type: SLACK),
    Fact.new(fact: '@Avishai Lippner about @Limor Mekaiten: Stack Overflow was her only friend...', type: SLACK)].freeze
  def make
    FACTS.sample
  end
end