class AddRouterIdToPostRouterItems < ActiveRecord::Migration[6.1]
  def change
    change_table :post_router_items do |t|
      t.belongs_to :router, index: true, foreign_key: { to_table: :post_routers, on_delete: :nullify }
    end
  end
end
