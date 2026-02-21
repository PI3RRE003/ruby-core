require_relative 'ingresso'
require_relative 'sessao'

matrix = Sessao.new("Matrix", 2)

ingresso_1 = Ingresso.new("Vitor")
ingresso_2 = Ingresso.new("Kaw")
ingresso_3 = Ingresso.new("Davi")

matrix.vender_ingresso(ingresso_1)
matrix.vender_ingresso(ingresso_2)
matrix.vender_ingresso(ingresso_3)

matrix.receita_total