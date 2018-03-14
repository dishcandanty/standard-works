require 'test_helper'

class StandardWorksTest < Minitest::Test
  def test_benchmark
    StandardWorks.clear
    Benchmark.bm(7) do |x|
      x.report('start: ') { StandardWorks.lookup('Hi') }
      x.report('next:  ') { StandardWorks.lookup('There') }
    end
  end
end
