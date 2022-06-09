module MyEnumerable
  def all?
    response = false
    @list.each do |num|
      response = true if yield(num)
    end
    response
  end

  def any?
    response = false
    @list.each do |num|
      response = true if yield(num)
    end
    response
  end

  def filter?
    filtered_list = []
    @list.each do |num|
      filtered_list.push(num) if yield(num)
    end
    filtered_list
  end
end
