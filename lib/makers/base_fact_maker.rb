# frozen_string_literal: true

class BaseFactMaker

  FACT = 'FACT'

  def make
    raise NotImplementedError
  end
end
