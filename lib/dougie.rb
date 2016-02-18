libdir = File.dirname(__FILE__)
$LOAD_PATH.unshift(libdir) unless $LOAD_PATH.include?(libdir)

require "dougie/version"
require "dougie/constants"
require "dougie/configuration"
require "dougie/logger"
require "dougie/builder"
require "dougie/syncer"
