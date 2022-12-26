class YieldTest

 # def test
    def one_yield
      yield
    end

    def multiple_yields
      yield
      yield
    end

    one_yield { puts "one yield" }
    multiple_yields { puts "multiple yields" }
 # end
end

YieldTest.new.test
