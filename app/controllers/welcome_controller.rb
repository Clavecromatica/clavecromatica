class WelcomeController < ApplicationController
  def index
    @generos = Genero.all.order(:nombre).first(6)
    @artistas = Artista.all.order(:nombre).first(12)
    @discos = Disco.all.order(:nombre).first(12)
  end

  def politica_privacidad
  end

  def politica_devoluciones
  end

  def contactanos
  end
end
