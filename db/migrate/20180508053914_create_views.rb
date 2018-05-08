class CreateViews < ActiveRecord::Migration[5.1]
  def change
    create_table :views, id: :uuid do |t|
      t.belongs_to  :job_posting, type: :uuid, index: true, null: false
      t.timestamps
    end
  end
end
