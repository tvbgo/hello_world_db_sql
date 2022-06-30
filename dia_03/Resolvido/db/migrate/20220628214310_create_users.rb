class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string    :name
      t.string    :email
      t.timestamps # `created_at` and `updated_at`
    end
  end
end