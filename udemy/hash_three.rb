p ["1", "23.0", "0.9"].map { |x| [x => x.to_i] }
p ["1", '23.0', '0.9'].map(&:to_i)
p ("a".."g").to_a.map { |i| i * 2 }
p Hash[[1, 2.1, 3.33, 0.9].map { |x| [x, x.to_i] }]
p Hash[%W{A dynamic open source programming language}.map { |w| [w, w.length] }]
p {:f => "foo", :b => "bar", :lat => "120.123", :long => "33.212"}.map{ |a, b| "#{a} - #{b}" }.join('&')
