class CreatePostRouterItems < ActiveRecord::Migration[6.1]
  def change
    create_table :post_router_items do |t|
      # index: false until it really needed
      t.belongs_to :post, null: false, index: false, foreign_key: { on_delete: :cascade }
      t.string :path, null: false, index: { unique: true }

      t.timestamps
    end
  end
end
