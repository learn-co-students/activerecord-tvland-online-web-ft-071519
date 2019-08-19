require 'pry'

class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  def actors_list
    self.actors.map do|act|
      act.full_name
    end
  end

def build_network(call_letters:)
  
 new_network = Network.create(:call_letters => call_letters)
 self.network = new_network
  self.save
  
end  

end