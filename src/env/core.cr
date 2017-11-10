require "./version"

module Crystal
  struct Env
    # :nodoc:
    macro default(value)
      module Crystal
        {% if !Env.has_constant?(:DEFAULT) %}
          struct Env
            DEFAULT = {{value}}
          end
        {% end %}
      end
    end

    # :nodoc:
    def initialize
    end

    # :nodoc:
    def name
      ENV.fetch("CRYSTAL_ENV", Crystal::Env::DEFAULT)
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
