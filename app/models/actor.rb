class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    #returns the first and last name of an actor
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    #lists all the characters of an actor alongside the show that the character is in
    #  ["#{character.name} - #{show.name}"]
    self.characters.map {|c| "#{c.name} - #{c.show.name}"}
  end


  
end