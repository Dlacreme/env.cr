module Envcr
  class EnvcrException < Exception
    def self.from_env_item(env_item : EnvItem) : EnvcrException
      EnvcrException.new("#{env_item.name} is missing and does not have a default value")
    end
  end
end
