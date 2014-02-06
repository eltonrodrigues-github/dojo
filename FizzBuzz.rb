require "test/unit"

class FizzBuzz
    def jogar(numero)
        if multiplo_de_3(numero) && multiplo_de_5(numero)
            "FizzBuzz"
        elsif multiplo_de_3(numero)
            "Fizz"
        elsif multiplo_de_5(numero)
            "Buzz"
        else
            numero
        end
    end

    private
        def multiplo_de_5(numero)
            numero % 5 == 0
        end

        def multiplo_de_3(numero)
            numero % 3 == 0
        end
end


class BancoTest < Test::Unit::TestCase
    def test_1_say_1
        fizzBuzz = FizzBuzz.new
        assert_equal(1, fizzBuzz.jogar(1))
    end

    def test_2_say_2
        fizzBuzz = FizzBuzz.new
        assert_equal(2, fizzBuzz.jogar(2))
    end

    def test_3_say_fizz
        fizzBuzz = FizzBuzz.new
        assert_equal("Fizz", fizzBuzz.jogar(3))
    end

    def test_6_say_fizz
        fizzBuzz = FizzBuzz.new
        assert_equal("Fizz", fizzBuzz.jogar(6))
    end

    def test_5_say_buzz
        fizzBuzz = FizzBuzz.new
        assert_equal("Buzz", fizzBuzz.jogar(5))
    end

    def test_10_say_buzz
        fizzBuzz = FizzBuzz.new
        assert_equal("Buzz", fizzBuzz.jogar(10))
    end

    def test_15_say_fizzbuzz
        fizzBuzz = FizzBuzz.new
        assert_equal("FizzBuzz", fizzBuzz.jogar(15))
    end
end