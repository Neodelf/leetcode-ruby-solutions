# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    nums.each_with_index do |n, i|
        number = target - n
        index = nums[i+1..-1].index(number)
        return [i, index+i+1] if index
    end
end
