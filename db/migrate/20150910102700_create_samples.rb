class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|

      t.string :author
      t.string :email
      t.text :comment

      t.timestamps
    end
  end
end
