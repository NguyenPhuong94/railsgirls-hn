class CreateBangdiemhocsinhs < ActiveRecord::Migration
  def change
    create_table :bangdiemhocsinhs do |t|
      t.string :Name
      t.text :Date
      t.string :Lop
      t.string :Sumary

      t.timestamps null: false
    end
  end
end
