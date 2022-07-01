class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string     :description, null: false
      t.string     :title, null: false
      t.integer    :stars, null: false

      t.references :user, foreign_key: true
      t.references :purchase, foreign_key: true
      t.timestamps # `created_at` and `updated_at`
    end
  end
end