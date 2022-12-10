#= Teste para a implementação da calculadora em Julia, utilizando métodos em C =#
println("Digite dois números:")
x = readline()
y = readline()
func = "C_functions/libmath_em_c.dll"


plus = ccall(
    (:plus, func), # (função , biblioteca)
    Cdouble, # Retorno
    (Cdouble, Cdouble), # Tipos dos argumentos em uma Tupla
    parse(Float64, x), parse(Float64, y))

minus = ccall(:minus, func, Cdouble, (Cdouble, Cdouble), parse(Float64, x), parse(Float64, y))
multiply = ccall(:multiply, func, Cdouble, (Cdouble, Cdouble), parse(Float64, x), parse(Float64, y))
divide = ccall(:divide, func, Cdouble, (Cdouble, Cdouble), parse(Float64, x), parse(Float64, y))
square = ccall(:square, func, Cdouble, Cdouble, parse(Float64, x))
anySquare = ccall(:anySquare, func, Cdouble, (Cdouble, Int64), parse(Float64, x), parse(Int64, y))
oneAboveX = ccall(:oneAboveX, func, Cdouble, (Cdouble), parse(Float64, x))
moduler = ccall(:module, func, Cdouble, (Cdouble), parse(Float64, x))
euler = ccall(:euler, func, Cdouble,)
squareRoot = ccall(:squares, func, Cdouble, (Cdouble), parse(Float64, x))
ln = ccall(:ln, func, Cdouble, (Cdouble), parse(Float64, x))
log = ccall(:log, func, Cdouble, (Cdouble), parse(Float64, x))
pi = ccall(:pi, func, Cdouble)


println("Resultado da soma = $plus")