#!/usr/bin/env ruby

require 'benchmark'

repetitions = 1_000_000

Benchmark.bm(7) do |x|
  x.report 'String' do
    repetitions.times do
      options = {'hello' => 'world'}
    end
  end

  x.report 'Symbol' do
    repetitions.times do
      options = {'Hello' => 'World'}
    end
  end
end
