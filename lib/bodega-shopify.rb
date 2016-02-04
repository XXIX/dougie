libdir = File.dirname(__FILE__)
$LOAD_PATH.unshift(libdir) unless $LOAD_PATH.include?(libdir)

require "bodega-shopify/version"
require "bodega-shopify/constants"
require "bodega-shopify/configuration"
require "bodega-shopify/logger"
require "bodega-shopify/builder"
require "bodega-shopify/syncer"
