require 'rails_helper'

RSpec.describe 'posts/_router.html.erb' do
  subject do
    render partial: 'posts/router', locals: { post_router_item: router_item }
  end

  context 'there is fully structured router' do
    let!(:router) { create(:post_router) }
    let!(:router_item) { create(:post_router_item, :active, router: router) }
    let!(:router_item_inactive) { create(:post_router_item, router: router) }
    let!(:router_item_with_section) do
      create(:post_router_item, :active, :with_section, router: router)
    end

    it do
      is_expected.to include(router_item.path)
      is_expected.to include(router_item_with_section.path)
      is_expected.to include(router_item_with_section.section.title)
      is_expected.not_to include(router_item_inactive.path)
    end
  end

  context 'there is not post_router for router_item' do
    let!(:router_item) { create(:post_router_item, :active) }

    it { is_expected.to be_blank }
  end
end