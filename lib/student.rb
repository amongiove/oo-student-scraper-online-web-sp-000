class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url
  @@all = []

  def initialize(hash)
    hash.each do |key, value|
      self.send("#{key}=", value) if self.respond_to?("#{key}=")
    end
    @@all << self
  end

  def self.all
    @@all
  end

  def self.create_from_collection(students_array)
    students_array.each do |student|
      Student.new(student)
    end
  end

  def add_student_attributes(attributes_hash)
    attributes_hash.each do |key, value|
      self.send("#{key}=", value)
    end

  end

end
