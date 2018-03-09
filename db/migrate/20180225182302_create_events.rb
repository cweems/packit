class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.belongs_to :project, index: true
      t.float :duration
      t.float :size
      t.timestamps
    end
  end
end
