class CreatePostRouterSection < ActiveRecord::Migration[6.1]
  def change
    create_table :post_router_sections do |t|
      t.string :title, null: false
      t.timestamps
    end
  end
end
