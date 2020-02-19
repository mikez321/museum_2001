class Museum
  attr_reader :name, :exhibits, :patrons
  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    names = exhibits.map do |exhibit|
      exhibit.name
    end
    match = patron.interests & names
    recommended = []
    exhibits.each do |exhibit|
      match.each do |name|
        if name == exhibit.name
          recommended << exhibit
        end
      end
    end
    recommended.reverse
  end

  def admit(patron)
    @patrons << patron
  end 

end
