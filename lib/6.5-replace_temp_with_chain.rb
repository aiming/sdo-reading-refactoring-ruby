class ReplaceTempWithChain
  class Select
    def options
      @options ||= []
    end

    def add_option(arg)
      options << arg
    end
  end

  def add_options_to_select
    select = Select.new
    select.add_option(1999)
    select.add_option(2000)
    select.add_option(2001)
    select.add_option(2002)
    select.options
  end
end
