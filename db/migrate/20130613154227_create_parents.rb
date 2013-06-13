class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.string :name
      t.references :grandparent

      t.timestamps
    end
    add_index :parents, :grandparent_id
  end
end
