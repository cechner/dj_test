class MyJob
  @@x = 0
  def self.inc_x
    @@x = @@x + 1
    puts "x is being incremented to #{@@x}"
  end
  def self.print_x
    puts "x is #{@@x}"
  end

  def print_x
    self.class.print_x
  end
end
