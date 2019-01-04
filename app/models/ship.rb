class Ship
  attr_accessor :name, :type, :booty

  @@ships = []
  def initialize(attributes)
    attributes.each do |k, v|
      send("#{k}=", v)
    end
    self.class.all << self
  end

  def self.all
    @@ships
  end

  def self.clear
    all.clear
  end
end