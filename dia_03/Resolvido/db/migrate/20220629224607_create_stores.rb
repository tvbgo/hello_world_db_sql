class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.string    :name
      t.string    :address
      t.timestamps # `created_at` and `updated_at`
    end
  end
end