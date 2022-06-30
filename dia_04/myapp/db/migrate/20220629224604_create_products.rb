class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string    :description
      t.string    :title
      t.float     :value
      t.timestamps # `created_at` and `updated_at`
    end
  end
end