class CreateErequests < ActiveRecord::Migration[6.0]
  def change
    create_table :erequests do |t|
      t.string :title
      t.string :request
      t.string :requestID
      t.string :requestType
      t.string :created_by

      t.timestamps
    end
  end
end
