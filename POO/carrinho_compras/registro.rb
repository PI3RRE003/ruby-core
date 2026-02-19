module Registro #usando o conceito DRY registro serve para todos os novos logs que aparecessem no sistema
  def log(mensagem)
    puts "[LOG DO SISTEMA] : #{mensagem}"
  end
end
