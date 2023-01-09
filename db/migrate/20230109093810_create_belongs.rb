class CreateBelongs < ActiveRecord::Migration[6.0]
  def change
    create_table :belongs do |t|
      t.string :name

      t.timestamps
    end
  end
end
