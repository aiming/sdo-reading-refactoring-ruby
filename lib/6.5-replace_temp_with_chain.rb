class ReplaceTempWithChain
  class Select
    def self.with_option(option)
      select = self.new
      select.options << option
      select
    end

    def options
      @options ||= []
    end

    def and(arg)
      options << arg
      self
    end
  end

  def add_options_to_select
    select = Select.with_option(1999).and(2000).and(2001).and(2002)
    select.options
  end
end
