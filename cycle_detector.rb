class CycleDetector

  def initialize(list)
    @tortoise = list
    @hare = list.next_node if list
  end

  def self.detect(list)
    self.new(list).detect
  end

  def detect
    while list_continues?
      puts "Tortoise: #{@tortoise}"
      puts "Hare: #{@hare}"
      move_tortoise
      move_hare
    end

  end

  private

  def move_hare
    @hare = @hare.next_node.next_node if @hare.next_node
  end

  def move_tortoise
    @tortoise = @tortoise.next_node
  end

  def list_continues?
    @tortoise && @hare
  end

end
