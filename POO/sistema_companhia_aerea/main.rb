require_relative 'companhia'
require_relative 'passagem'
require_relative 'passageiro'
require_relative 'voo'

# 1. Cria a companhia e o voo
companhia = Companhia.new("Ruby Airlines")
voo_sp = Voo.new("RUBY01", "São Paulo", 2) # Capacidade para SÓ 2 pessoas!

companhia.cadastrar_voo(voo_sp)

# 2. Cria os passageiros
vitor = Passageiro.new("Vitor", "111.111.111-11")
kaw = Passageiro.new("Kaw", "222.222.222-22")
davi = Passageiro.new("Davi", "333.333.333-33")

# 3. Inicia as vendas
companhia.vender_passagem(vitor, "RUBY01", "1A") # Sucesso
companhia.vender_passagem(kaw, "RUBY01", "1A")   # ERRO: Assento 1A já ocupado!
companhia.vender_passagem(kaw, "RUBY01", "1B")   # Sucesso

companhia.vender_passagem(davi, "RUBY01", "2A")  # ERRO: Voo lotado! (Capacidade era 2)

# 4. Imprime quem vai embarcar
companhia.listar_embarque("RUBY01")
# Deve imprimir Vitor no 1A e Kaw no 1B

# 5. Muda o status do voo
voo_sp.iniciar_embarque

# 6. Tenta vender de novo após o embarque iniciar
companhia.vender_passagem(davi, "RUBY01", "2A")  # ERRO: Voo já está embarcando!