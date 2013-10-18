require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase

        def setup
                @a = Fraccion.new(3,2)
                @b = Fraccion.new(2,2)
        end

       
        def test_suma
                #Comprobamos la suma con los valores estandar
                result = @a.suma(@b)
                assert result.numerador == 5 and result.denominador == 2
              
              
        end
        def test_resta
                #Comprobamos la resta con los valores estandar
                result = @a.resta(@b)
                assert result.numerador == 1 and result.denominador == 2
               
        end
        def test_producto
                #Comprobamos el producto con los valores estandar
                result = @a.producto(@b)
                assert result.numerador == 3 and result.denominador == 2
               

        end
        def test_division
                #Comprobamos la division con los valores estandar
                result = @a.division(@b)
                assert result.numerador == 3 and result.denominador == 2
                
        end


end







