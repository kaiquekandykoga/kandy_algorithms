module MaximumSumOfSubArrayWithLengthK
  def self.call(nums, k)
    index = 0
    max_sum = 0
    while (index + k) < nums.length
      sum = nums[index...(index + k)].sum
      max_sum = sum if sum > max_sum
      index += 1
    end
    max_sum
  end
end

output = MaximumSumOfSubArrayWithLengthK.call([2, 1, 5, 1, 3, 2], 3) # output => 9
puts "MaximumSumOfSubArrayWithLengthK.call([2, 1, 5, 1, 3, 2], 3) => #{output}"

