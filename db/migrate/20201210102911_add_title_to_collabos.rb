class AddTitleToCollabos < ActiveRecord::Migration[6.0]
  def change
    add_column :collabos, :description, :text
    rename_column :collabos,  :kind, :title

  end
end
