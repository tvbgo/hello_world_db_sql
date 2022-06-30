class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string    :description
      t.string    :title
      t.integer   :stars
      t.timestamps # `created_at` and `updated_at`
    end
  end
end