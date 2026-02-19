puts"----- LOJA DA KAW -----"
print"Digite o valor da compra:"
valor = gets.chomp.to_i
print"É cliente premium? (S/N): "
cliente_premium = gets.chomp.upcase

if valor >= 100 && cliente_premium == "S"
  desconto = 0.2  
  total = valor  - (valor * desconto)
  p "Total com 20% desconto para cliente premium R$:#{total}" 
elsif valor < 100 && cliente_premium == "S"
  desconto = 0.1  
  total = valor  - (valor * desconto)
  p "Total com 10% desconto para cliente premium R$:#{total}" 
else
  desconto = 0.05  
  total = valor  - (valor * desconto)
  p "Total a vista com 5% desconto R$:#{total}"
end