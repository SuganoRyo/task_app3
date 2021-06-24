class CreateTaskapps < ActiveRecord::Migration[6.1]
  def change
    create_table :taskapps do |t|
      t.string :title
      t.date :start
      t.date :end
      t.boolean :all
      t.string :memo

      t.timestamps
    end
  end
end
