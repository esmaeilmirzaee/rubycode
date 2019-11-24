# I do not understand this...
class AnyP
  def method_missing(name, *args)
    if name.to_s.start_with?('p')
      "You called #{name} with #{args.instance}"
    else
      super
    end
  end
end


has_p = AnyP.new
p has_p.method_missing :pmethod, [1, 2, 3]


