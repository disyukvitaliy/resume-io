class AddRouterIdToPostRouterItems < ActiveRecord::Migration[6.1]
  def change
    change_table :post_router_items do |t|
      # to prevent constructions like post_router_item.post_router.post_router_items
      # too many duplications of post and router
      t.belongs_to :router, index: true, foreign_key: { to_table: :post_routers, on_delete: :nullify }
    end
  end
end
