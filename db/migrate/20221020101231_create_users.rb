class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :title, null: false
      t.date :starting, null: false
      t.date :ending, null: false
      t.boolean :allday,default:false
      t.text :memo

      t.timestamps
    end
  end
end