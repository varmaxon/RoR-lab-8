# frozen_string_literal: true

require_relative 'calc_controller'

RSpec.describe CalcController do
  describe '#commun' do
    context 'when arr is nil' do
      it 'should return nil' do
        expect(described_class.find_prime_numbers(10)).to match_array([2, 3, 5, 7])
      end
    end

    # context 'when line is sorted in DEcreasing words length' do
    #   it 'should return sorting lines' do
    #     str = ''
    #     length = 4
    #     3.times do
    #       str += (0...length).map { (rand(65..65+26)).chr }.join + ' '
    #       length -= 1
    #     end
    #     str.chop
    #     str = str.split(' ')
    #     expect(described_class.sorting([str])).to match_array([str])
    #   end
    # end

  end
end 