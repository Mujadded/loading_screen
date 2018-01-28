module LoadingScreen
  class InvalidOptionError < StandardError
    def initialize(msg = "Some options were mistaken")
      super(msg)
    end
  end
end
