class ConsultaBancoController < ApplicationController
  def index
  end

  def consultar
    begin
      @resultado = ActiveRecord::Base.connection.execute(params[:query])
    rescue => error
      @erro = error
    end

    render 'index'
  end
end
