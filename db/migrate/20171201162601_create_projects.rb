class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.column :user_id, :integer
      t.column :title, :string
      t.column :project_link, :string

      t.timestamps
    end
  end
end
