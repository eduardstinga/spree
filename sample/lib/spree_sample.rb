require 'spree_core'
require 'spree/sample'

module SpreeSample
  class Engine < Rails::Engine
    engine_name 'spree_sample'

    config.active_record.yaml_column_permitted_classes = [Symbol]
    # Needs to be here so we can access it inside the tests
    def self.load_samples
      Spree::Sample.load_sample('addresses')
      Spree::Sample.load_sample('zones')
      Spree::Sample.load_sample('payment_methods')
      Spree::Sample.load_sample('shipping_methods')
      Spree::Sample.load_sample('tax_categories')
      Spree::Sample.load_sample('tax_rates')
      Spree::Sample.load_sample('taxonomies')
      Spree::Sample.load_sample('promotions')

      Spree::Sample.load_sample('products')
      Spree::Sample.load_sample('taxons')
      Spree::Sample.load_sample('option_types')
      Spree::Sample.load_sample('option_values')
      Spree::Sample.load_sample('product_properties')
      Spree::Sample.load_sample('prototypes')
      Spree::Sample.load_sample('variants')
      Spree::Sample.load_sample('stock')

      Spree::Sample.load_sample('orders')
      Spree::Sample.load_sample('adjustments')
      Spree::Sample.load_sample('payments')
      Spree::Sample.load_sample('reimbursements')
      Spree::Sample.load_sample('return_authorization_reasons')
      Spree::Sample.load_sample('stores')
      Spree::Sample.load_sample('google_feed_settings')

      Spree::Sample.load_sample('cms_standard_pages')
      Spree::Sample.load_sample('cms_feature_pages')
      Spree::Sample.load_sample('cms_homepages')
      Spree::Sample.load_sample('cms_sections')
      Spree::Sample.load_sample('menus')
      Spree::Sample.load_sample('menu_items')
    end
  end
end
