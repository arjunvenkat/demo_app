class CreateConcentrations < ActiveRecord::Migration
  def change
    create_table :concentrations do |t|
      t.string :name
    end
  end
end
