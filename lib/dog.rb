class Dog
  attr_reader :name
  attr_writer
  attr_accessor :mood



  def initialize(name)
    @name =name
    @mood = "nervous"
  end
  # code goes here
end
