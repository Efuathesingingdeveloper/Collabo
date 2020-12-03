class CreateCollabos < ActiveRecord::Migration[6.0]
  def change
    create_table :collabos do |t|
      t.string :kind
      t.integer :requestor_user_id
      t.integer :responder_user_id

      t.timestamps
    end
  end
end
