class Student

  attr_accessor :name, :location, :profile_url
  @@all = []

  def initialize(student={})
    @@all << self
  end

  def self.all
    @@all
  end

  def self.create_from_collection(students_array)
  end

  def add_student_attributes(attributes_hash)

  end

end
