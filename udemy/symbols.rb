class Array
  define_method(:new_method, lambda {
                  |*args| puts(args.inspect)
                })
end
puts(Array.method_defined?(:new_method))
[].new_method(1, 2, 3)

class Array
  remove_method(:new_method)
end
puts(Array.method_defined?(:new_method))
#[].new_method(1, 2, 3)

