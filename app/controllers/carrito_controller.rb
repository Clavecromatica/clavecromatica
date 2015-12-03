class CarritoController < ApplicationController
  before_filter :authenticate_user!
  def carrito
    if cookies[:carrito].nil?
      redirect_to '/welcome/index'
    end
    @cart = JSON.parse(cookies[:carrito])
    @discos = Disco.where(id: @cart)
    @total = 0
    @discos.each do |disco|
      @total = @total + disco.precio
    end
  end
end
