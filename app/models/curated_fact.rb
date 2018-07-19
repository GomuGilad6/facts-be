# frozen_string_literal: true
# == Schema Information
#
# Table name: curated_facts
#
#  id        :bigint(8)        not null, primary key
#  fact_desc :string           not null
#  image_url :string
#

class CuratedFact < ActiveRecord::Base
  def self.fetch_random(amount)
    order('RANDOM()').limit(amount)
  end
end
