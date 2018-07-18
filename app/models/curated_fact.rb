# frozen_string_literal: true

# == Schema Information
#
# Table name: curated_facts
#
#  id        :bigint(8)        not null, primary key
#  fact_desc :string           not null
#

class CuratedFact < ActiveRecord::Base
  def self.fetch_random(amount)
    limit(amount).order('RANDOM()')
  end
end
