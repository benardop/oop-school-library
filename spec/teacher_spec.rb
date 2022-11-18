require 'rspec'
require './teacher'

teacher = Teacher.new('Physics', 45, 'Challe', true)

RSpec.describe "Teacher " do 
    it 'public properties are accessible ' do 
        expect(teacher.name).to eq('Challe')
        expect(teacher.specialization).to eq('Physics')
        expect(teacher.type).to eq('Teacher')
        expect(teacher.age).to be > 18
    end 

    it 'check if a teacher can use a service ' do 
        expect(teacher.can_use_services?).to be_truthy
    end 
end