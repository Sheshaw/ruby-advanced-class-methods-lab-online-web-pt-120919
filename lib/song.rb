class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  def self.create(name)
    song_name = self.new
    song.name = name
    
  end

end
