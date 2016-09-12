

class Hamming

  def self.compute(first, second)

    raise ArgumentError unless first.length == second.length


    first_array = first.split('')
    second_array = second.split('')

    counter = 0

    first_array.each_with_index do |item, index|
      if first_array[index] != second_array[index]
        counter += 1
      end
    end
    return counter
  end

end

# puts Hamming.compute("alfifn", "affffr")
