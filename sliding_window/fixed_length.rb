module MaximumSumOfSubArrayWithLengthK
  # An O(n⋅k) time complexity means that an algorithm's
  # execution time is directly proportional to the
  # product of two input parameters, n and k. As
  # either n or k grows, the running time increases
  # at a proportional rate, which is a form
  # of polynomial time complexity
  def self.call_0(nums, k)
    index = 0
    max_sum = 0
    while (index + k) <= nums.length
      sum = nums[index...(index + k)].sum # O(n⋅k)
      max_sum = [sum, max_sum].max
      index += 1
    end
    max_sum
  end

  # Time complexity: O(n)
  # Space complexity: O(1) (ignoring input storage)
  def self.call_1(nums, k)
    return nil if k <= 0
    return nil if nums.nil? || nums.empty?
    return nil if k > nums.length

    current_sum = nums[0, k].sum
    max_sum = current_sum

    (k...nums.length).each do |i|
      current_sum += nums[i] - nums[i - k]
      max_sum = current_sum if current_sum > max_sum
    end

    max_sum
  end
end

output = MaximumSumOfSubArrayWithLengthK.call_0([2, 1, 5, 1, 3, 2], 3) # output => 9
puts "MaximumSumOfSubArrayWithLengthK.call_0([2, 1, 5, 1, 3, 2], 3) => #{output}"

output = MaximumSumOfSubArrayWithLengthK.call_1([2, 1, 5, 1, 3, 2], 3) # output => 9
puts "MaximumSumOfSubArrayWithLengthK.call_1([2, 1, 5, 1, 3, 2], 3) => #{output}"

