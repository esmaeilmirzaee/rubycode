def custom_first(arr, num = 0)
  return arr[0] if 0 == num

  arr[0, num]
end

def custom_last(arr, num = 0)
  return arr[0] if 0 == num

  arr[-num..-1]
end
