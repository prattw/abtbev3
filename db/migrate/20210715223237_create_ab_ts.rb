class CreateAbTs < ActiveRecord::Migration[6.1]
  def change
    create_table :ab_ts do |t|
      t.string :email
      t.string :comments

      t.timestamps
    end
  end
end
