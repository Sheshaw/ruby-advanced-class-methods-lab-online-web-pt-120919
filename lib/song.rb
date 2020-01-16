class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = self.new #instantiates
    song.save # calles the .save method and saves it
    song # returns it
  end
  
  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end
  
  def self.create_by_name(name)
    song = self.new # instantiates
    song.name = name # makes song.name equal to the name and gets it
    song.save # saves the name
    song # returns the name
  end
  
  def self.find_by_name(name)
    self.all.find{|person| person.name == name}
  end
  
  def self.find_or_create_by_name(name) 
    self.find_by_name(name) || self.create_by_name(name)
end
    
end
