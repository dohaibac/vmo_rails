class AddDescriptionToCharities < ActiveRecord::Migration[5.0]
  def change
    add_column :charities, :description, :text, default: ""
  end
end
