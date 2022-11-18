require 'rspec'
require './student'
require './classroom.rb'

student = Student.new('p4', 10, 'Lisa', true)
clss = Classroom.new('e')

RSpec.describe 'Student' do 
    it "ensure that we are able to access all the properties that are accessible" do 
        expect(student.name).to eq('Lisa')
        expect(student.classroom).to eq('p4')
        expect(student.type).to eq('Student')
        expect(student.age).to be(10)
        expect(student.parent_permission).to be_truthy
    end

    it 'student plays hooky' do 
        expect(student.play_hooky).to eq('¯(ツ)/¯')
    end
end