class Fact
  attr_reader :fact
  attr_reader :type
  attr_reader :image

  def initialize(fact:, type:, image: nil)
    @fact = fact
    @type = type
    @image = image
  end
end