class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  
  def actors_list
    self.actors.map do|act|
      act.full_name
    end
  end
def build_network(x)
  
end  

end