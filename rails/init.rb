ActionView::Base.send(:include, GeoYahooHelper)
aux = ActionView::Helpers::AssetTagHelper::JAVASCRIPT_DEFAULT_SOURCES
aux2 = aux+['jquery','jquery.autocomplete']
ActionView::Helpers::AssetTagHelper::JAVASCRIPT_DEFAULT_SOURCES = aux2
ActionView::Helpers::AssetTagHelper::reset_javascript_include_default