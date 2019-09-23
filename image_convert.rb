# frozen_string_literal: true

lib = File.expand_path('./lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'pry'
require 'growi-client'
require 'growi-image-converter-esa'

client = GrowiClient.new growi_url: ENV['GROWI_URL'], access_token: ENV['GROWI_ACCESS_TOKEN']
image_converter = ImageConverter.new client
image_converter.convert dry_run: false
