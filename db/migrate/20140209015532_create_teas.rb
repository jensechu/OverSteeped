class CreateTeas < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string :name
      t.timestamps
    end

    create_table :teas do |t|
      t.string :name
      t.text :description
      t.integer :steep_time
      t.belongs_to :category
      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
