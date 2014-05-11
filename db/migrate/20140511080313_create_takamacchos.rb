class CreateTakamacchos < ActiveRecord::Migration
  def change
    create_table :takamacchos do |t|

      t.timestamps
    end
  end
end
