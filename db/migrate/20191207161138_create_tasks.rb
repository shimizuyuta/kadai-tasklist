class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :content

      t.timestamps
      t.references :user, foreigen_key:true
    end
  end
end
