module ENVCR
  class ENVCRException < Exception
    def self.from_env_item(env_item : EnvItem) : ENVCRException
      ENVCRException.new("#{env_item.name} is missing and does not have a default value")
    end
  end
end
