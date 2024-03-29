# Use TDD principles to build out name functionality for a Person.
# Here are the requirements:
# - Add a method to return the full name as a string. A full name includes
#   first, middle, and last name. If the middle name is missing, there shouldn't
#   have extra spaces.
# - Add a method to return a full name with a middle initial. If the middle name
#   is missing, there shouldn't be extra spaces or a period.
# - Add a method to return all initials. If the middle name is missing, the
#   initials should only have two characters.
#
# We've already sketched out the spec descriptions for the #full_name. Try
# building the specs for that method, watch them fail, then write the code to
# make them pass. Then move on to the other two methods, but this time you'll
# create the descriptions to match the requirements above.

class Person
  attr_reader :first_name, :middle_name, :last_name

  def initialize(first_name:, middle_name: nil, last_name:)
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end

  def full_name
    middle = ""
    middle = " #{self.middle_name}" if (self.middle_name.is_a? String) 
    self.first_name + middle + " #{self.last_name}"
  end

  def full_name_with_middle_initial
    middle = ""
    middle = " #{self.get_first_initial(self.middle_name)}" if (self.middle_name.is_a? String) 
    self.first_name + middle + " #{self.last_name}"
  end

  def initials
    middle = ""
    middle = " #{self.get_first_initial(self.middle_name)}" if (self.middle_name.is_a? String) 
    self.get_first_initial(self.first_name) + middle + " #{self.get_first_initial(self.last_name)}"
  end

  def get_first_initial(name)
    name[0,1] + "."
  end
end
