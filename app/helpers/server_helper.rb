# frozen_string_literal: true

# serv helper
module ServerHelper
  def self.result_array(num)
    arr = (0..num).select do |elem|
      elem.to_s == elem.to_s.reverse && (elem**2).to_s == (elem**2).to_s.reverse
    end
    [arr, arr.map { |el| el**2 }]
  end
end
