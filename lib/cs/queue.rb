class Queue

  def initialize  
    @data = []
  end

  def enqueue(value)
    @data[@data.count] = value
  end

  def dequeue
    @data = @data[0, @data.length-1] # fake pop-off, give me a new array with the last thing chopped off. That's it!
  end

  def data
    @data
  end
end