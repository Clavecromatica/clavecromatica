class CarritoController < ApplicationController
  before_filter :authenticate_user!
  def carrito
    if cookies[:carrito].nil?
      redirect_to '/welcome/index'
    end
    @cart = JSON.parse(cookies[:carrito])
    @discos = Disco.where(id: @cart)
  end
end
