class Student
  # Remember, you can access your database connection anywhere in this class with DB[:conn]
  attr_accessor :name, :grade

  @@all = []

  def initialize(name, grade, id = nil)
    @id = id
    @name = name
    @grade = grade

    @@all << self
  end

  def self.create_table()

  end

  def save(name)
  end

  def self.create(name:, grade:)
    student = Student.new()
    student.save
    student
  end

end
