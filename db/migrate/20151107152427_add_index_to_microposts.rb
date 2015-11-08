class AddIndexToMicroposts < ActiveRecord::Migration
  def change

    change_table :microposts do |t|
     t.remove :user_id
     t.references :user, index: true, foreign_key:true

  end
     add_index :microposts, [:user_id, :created_at]
  end
end
