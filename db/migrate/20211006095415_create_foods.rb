# frozen_string_literal: true

class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
