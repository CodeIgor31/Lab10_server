# frozen_string_literal: true

# Palindroms controller
class ServerController < ApplicationController
  before_action :set_parameter, only: :result
  def index; end

  def result
    @res_arr, @squares = ServerHelper.result_array(@number)
    i = -1
    @xml_arr = Array.new(@res_arr.size) do
      i += 1
      { def: @res_arr[i], sqr: @squares[i], index: i + 1 }
    end
    respond_to do |format|
      format.html
      format.xml { render xml: @xml_arr }
    end
  end

  private

  def set_parameter
    @number = params[:num].to_i
  end
end
