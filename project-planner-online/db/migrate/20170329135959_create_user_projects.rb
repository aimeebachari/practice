class CreateUserProjects < ActiveRecord::Migration
  def change
    create_table :user_projects do |t|
      t.belongs_to :projects
      t.belongs_to :users
    end
  end
end
