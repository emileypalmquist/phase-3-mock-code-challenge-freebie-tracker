class RemovePotatoFromFreebies < ActiveRecord::Migration[6.1]
  def change
    remove_column :freebies, :potato, :integer
  end
end
