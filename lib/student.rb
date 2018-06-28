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
    sql =  <<-SQL
      CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY,
        name TEXT,
        grade TEXT
      );
      SQL
    DB[:conn].execute(sql)
  end

  def save(name, grade)
    sql = <<-SQL

    SQL

    DB[:conn].execute(sql, name, grade)
  end

  def self.create(name:, grade:)
    student = Student.new()
    student.save
    student
  end

end
