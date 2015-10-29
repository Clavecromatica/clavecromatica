class Disco < ActiveRecord::Base
  belongs_to :artista
  belongs_to :discografica
end
