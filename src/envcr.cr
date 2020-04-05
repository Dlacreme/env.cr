require "yaml"
require "./exceptions.cr"
require "./env_item.cr"

class Array(T)
  def self.from_envcr_yaml_file(file_path : String)
    File.open(file_path) { |f| Array(T).from_yaml(f) }
  end
end

module Envcr
  extend self
  VERSION = "0.1.0"

  def load!(file_path : String)
    Array(EnvItem).from_envcr_yaml_file(file_path).each { |x| x.eval }
  end
end
