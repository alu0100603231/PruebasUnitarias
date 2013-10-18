require "./gcd.rb"

class Fraccion

  attr_accessor :numerador ,  :denominador

  def initialize(numerador, denominador)
    #Controlando que los numeros sean enteros, y que el denominador no sea 0
    mcd = gcd(numerador, denominador) # maximo comun divisor
    @numerador = numerador / mcd # fraccionsimplificada
    @denominador = denominador / mcd

  end


  def to_s
    "#{@numerador}/#{@denominador}"
  end

  def suma(otra)
        result = Fraccion.new(@numerador*otra.denominador + @denominador*otra.numerador, @denominador*otra.denominador)
  end

  def resta(otra)
       result = Fraccion.new(@numerador*otra.denominador - @denominador*otra.numerador, @denominador*otra.denominador)
  end

  def producto(otra)
        result = Fraccion.new(@numerador*otra.numerador, @denominador*otra.denominador)
  end

  def division(otra)
        result = Fraccion.new(@numerador*otra.denominador, @denominador*otra.numerador)
 end

end






