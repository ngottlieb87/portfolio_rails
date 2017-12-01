class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
    t.column :user_id, :integer
    t.column :project_id, :integer
    t.column :body, :string
  
    t.timestamps
    end
  end
end
