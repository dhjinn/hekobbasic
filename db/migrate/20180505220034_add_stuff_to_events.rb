class AddStuffToEvents < ActiveRecord::Migration[5.1]
  def change
  	add_column :events, :name, :string
  	add_column :events, :price, :decimal, :precision => 8, :scale => 2
  	add_column :events, :max, :integer
  	add_column :events, :duration, :integer
  	add_column :events, :instructor, :string
  	add_column :events, :topic, :string
  	add_column :events, :provided, :string
  	add_column :events, :prerequisites, :string
  	add_column :events, :when, :datetime

  	add_reference :events, :teacher, index: true
  end
end
