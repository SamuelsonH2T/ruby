=begin
	
rescue Exception => e
	
end
a = Array.new # cria um array vazio
a.push(10) # adciona no array, estrutura de fila
puts a
=end


# ARGV: argument vector

#x = ARGV # ARGV é pra passar parametros quando for executar o aquivo, mesma coisa com o python
#puts x.inspect # inspect analisa oq tem na variave, ou seja ela é um array, nesse caso
#puts x

#ex: ruby arrays.rb samuelson max
# retorna: ['samuelson', 'max']


nomes = []

nomes[0] = "Fasano"
nomes << "Fogo de Chao"

for nome in nomes
  puts nome
end



class Franquia

  def initialize
    @restaurantes = []
  end

  def adiciona(restaurante)
    @restaurantes << restaurante
  end

  def mostra
    for restaurante in @restaurantes
      puts restaurante.nome
    end
  end

end

class Restaurante
  attr_accessor :nome
end

restaurante_um = Restaurante.new
restaurante_um.nome = "Fasano"

restaurante_dois = Restaurante.new
restaurante_dois.nome = "Fogo de Chao"

franquia = Franquia.new
franquia.adiciona restaurante_um
franquia.adiciona restaurante_dois

franquia.mostra
puts "tudo feito"
