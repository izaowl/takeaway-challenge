class Menu
    
  def initialize
    @list = to_hash
  end
     
  def print_menu
    File.foreach("menu.txt") { |line| puts line }
  end

  def to_hash
    hash = {}
    File.open("menu.txt") do |dish|
      dish.each do |line|
        key, value = line.chomp.split("\s")
        hash[key] = value
      end
    end
    return hash.flatten
  end
end