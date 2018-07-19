# frozen_string_literal: true

class BaseFactMaker

  FACT = 'FACT'
  SLACK = 'SLACK'

  def make
    raise NotImplementedError
  end
end
