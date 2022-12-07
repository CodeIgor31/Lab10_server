# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ServerHelper do
  describe 'check result function' do
    it 'good' do
      expect(ServerHelper.result_array(11)).to eq([[0, 1, 2, 3, 11], [0, 1, 4, 9, 121]])
    end
    it 'zero value' do
      expect(ServerHelper.result_array(0)).to eq([[0], [0]])
    end
    it 'invalud value' do
      expect(ServerHelper.result_array(-21)).to eq([[], []])
    end
  end
end
