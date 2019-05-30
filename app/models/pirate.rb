class Pirate
  attr_reader :name, :weight, :height

  PIRATES = []

  def initialize(params)
    @name = params[:name]
    @grade = params[:weight]
    @height = params[:height]
    PIRATES << self
  end

  def self.all
    PIRATES
  end
end
