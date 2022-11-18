require 'rspec'
require './classroom'
require './student'

clss = Classroom.new('Literate')
student = Student.new('p4', 10, 'Lisa', true)

RSpec.describe 'Classroom' do
  it 'public methods are accessible ' do
    expect(clss.label).to eq('Literate')
    expect(clss.students.length).to be(0)
  end

  it 'a student is added to the classroom ' do
    clss.add_student(student)
    expect('')
  end
end
