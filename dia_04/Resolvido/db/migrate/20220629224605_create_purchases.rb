class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.date      :date
      t.float     :total_value
      t.timestamps # `created_at` and `updated_at`
      t.references :product, foreign_key: true
      t.references :user, foreign_key: true
    end
  end
end