require "./version"

module Crystal
  struct Env
    class InvalidEnvironmentError < Exception
    end

    # :nodoc:
    macro default(value)
      module Crystal
        {% if !Env.has_constant?(:DEFAULT) %}
          struct Env
            # :nodoc:
            DEFAULT = {{value}}
          end
        {% end %}
      end
    end

    # :nodoc:
    OPTIONS = %w(test development production)

    # :nodoc:
    def initialize
    end

    def name : String
      name = ENV.fetch("CRYSTAL_ENV", Crystal::Env::DEFAULT)
      raise InvalidEnvironmentError.new("Invalid environment name: #{name}") unless OPTIONS.includes?(name)
      name
    end

    def test? : Bool
      name == "test"
    end

    def development? : Bool
      name == "development"
    end

    def production? : Bool
      name == "production"
    end
  end

  def self.env : Env
    Env.new
  end
end
