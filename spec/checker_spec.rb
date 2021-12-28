require 'checker'

RSpec.describe '#checkgems' do
    it 'should have a status of 200 if gem exists' do
        expect(checkgems('curb')).to eq '200'
    end

    it 'should have a status of 404 if gem does not exists' do
        expect(checkgems('not_a_real_gem')).to eq '404'
    end

    it 'should throw error if no argument given' do
        expect { checkgems() }.to raise_error(ArgumentError)
    end
end