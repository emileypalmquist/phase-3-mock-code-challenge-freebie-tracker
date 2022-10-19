class CreateFreebies < ActiveRecord::Migration[6.1]
  def change
    create_table :freebies do |t|
      t.string :item_name
      t.integer :value
      t.belongs_to :dev
      t.belongs_to :company
      t.integer :potato
      # t.integer :company_id
      # t.belongs_to :dev
      # t.references :dev
      # t.references :company
    end
  end
end
