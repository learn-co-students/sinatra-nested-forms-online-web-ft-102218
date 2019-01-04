class Pirate
  attr_accessor :name, :height, :weight, :ships

  @@pirates = []
  def initialize(attributes)
    attributes.each do |k, v|
      send("#{k}=", v)
    end
    self.class.all << self
  end

  def self.all
    @@pirates
  end
end