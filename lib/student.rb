class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url 

  @@all = []
  
  # #new takes in an argument of a hash and sets that new 
  # student's attributes using the key/value pairs of that
  # hash.
  # adds that new student to the Student class' collection of
  # all existing students, stored in the '@@all' class 
  # variable.
  def initialize(student_hash)
    student_hash.each {|key, value| self.send(("#{key}="), value)
    }
    @@all << self
  end

  # .create_from_collection uses the Scraper class to create
  # new students with the correct name and location.
  def self.create_from_collection(students_array)
    students_array.each {|student|
      self.new(student)
    }
  end
  
  
  def add_student_attributes(attributes_hash)
    
  end

  def self.all
    
  end
end

