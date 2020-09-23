class AddColumnChannalTypeToChannals < ActiveRecord::Migration[6.0]
  def change
    add_column :channals, :channal_type, :string
  end
end
