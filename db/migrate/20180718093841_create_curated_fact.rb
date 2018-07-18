# frozen_string_literal: true

class CreateCuratedFact < ActiveRecord::Migration[5.2]
  def change
    create_table :curated_facts do |t|
      t.string :fact_desc, null: false
    end
  end
end
