# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ServerController, type: :controller do
  describe 'check response format' do
    it 'should be xml' do
      get 'result', params: { num: '11', format: :xml }
      expect(response.content_type).to eq('application/xml; charset=utf-8')
    end
  end
end
