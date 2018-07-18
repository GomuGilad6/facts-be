# frozen_string_literal: true

class CuratedFact < ActiveRecord::Base
  validates fact_desc, presence: true
end
