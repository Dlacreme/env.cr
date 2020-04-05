require "yaml"

module Envcr
  class EnvItem
    YAML.mapping(
      name: String,
      optional: {type: Bool, default: false},
      default: String?,
    )

    def pretty_print
      print "#{self.name} is #{self.required ? "required" : "optional"}"
      print " - default value: #{self.default}" unless self.default.nil?
      print "\n"
    end

    def eval
      return if ENV.has_key?(self.name)
      raise ENVCRException.from_env_item(self) if self.default.nil? && self.optional == false
      ENV[self.name] = self.default if self.default.nil? == false
    end
  end
end
