#!/usr/bin/env ruby

require("json")

binary_version = `npm/bin/ios-sim --version`.chop!

package = JSON.parse(File.read("./npm/package.json"))


unless package["version"] == binary_version
  puts "binary version and package version don't match"
  exit 1
end
