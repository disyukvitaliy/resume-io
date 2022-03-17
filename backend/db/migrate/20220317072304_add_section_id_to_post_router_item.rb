class AddSectionIdToPostRouterItem < ActiveRecord::Migration[6.1]
  def change
    change_table :post_router_items do |t|
      t.belongs_to :section, index: false, foreign_key: { to_table: :post_router_sections, on_delete: :nullify }
    end
  end
end
