# frozen_string_literal: true

# Palindroms controller
class ServerController < ApplicationController
  def index; end

  def result
    @number = params[:num].to_i
    @res_arr = ServerHelper.result_array(@number)
    @squares = @res_arr.map{|el| el**2}
    @hash = Hash[@res_arr.zip @squares]
    i = -1;
    @xml_arr = Array.new(@res_arr.size) do
      i += 1 
      {def: @res_arr[i], sqr: @squares[i], index: i+1}
    end
    respond_to do |format|
      format.html
      format.xml { render :xml => @xml_arr }
    end
  end
end