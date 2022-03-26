module Enumerable
  # Your code goes here

  def my_count
    i = 0
    for item in self
      unless block_given? && !yield(item)
          i = i + 1
      end
    end
    return i
  end

  def my_any?
    bool = false
    for item in self
      if yield(item)
        bool = true
      end
    end
    return bool
  end

  def my_each_with_index
    i = 0
    for item in self
      yield(item, i)
      i = i + 1
    end
  end

  def my_inject(start)
    total = start
    for item in self
      total = yield(total, item)
    end  
    return total
  end

  def my_none?
    bool = true
    for item in self
      if yield(item)
        bool = false
      end
    end
    return bool
  end

  def my_all?
    bool = true
    for item in self
      unless yield(item)
        bool = false
      end
    end
    return bool
  end


  def my_map
    total = []
    for item in self
      total << yield(item)
    end  
    return total
  end

  def my_select
    arr = []
    for item in self
      if (yield(item))
        arr << item
      end
    end  
    return arr
  end

end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    for item in self
      yield(item)
    end
  end

end

