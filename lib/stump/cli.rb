require "thor"
 
class Stump < Thor
  
  desc "init NAME", "Create new project NAME"
  def init(name)
    puts "create new project #{name} in #{Dir.pwd}"
  end

end
