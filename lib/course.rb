class Course
  @@all=[]
  attr_accessor :title, :schedule, :description
  def initialize(title,schedule,description)
    @@all << self
    @title=title
    @schedule=schedule
    @description=description
  end
  def self.all
    @@all
  end
  def self.reset_all
    @@all.clear
  end
end
