__precompile__()

module Waveforms

export
    squarewave,
    squarewave1,
    sawtoothwave,
    sawtoothwave1,
    trianglewave,
    trianglewave1

"""
    squarewave(x)

2π-periodic square wave function, min = -1, max = +1.

"""

squarewave(x::Real) = ifelse(mod2pi(x) < π, 1.0, -1.0)
squarewave(x::Real, θ::Real) = ifelse(mod2pi(x) < 2π*θ, 1.0, -1.0)

"""
    squarewave1(x)

1-periodic square wave function, min = -1, max = +1.

"""
squarewave1(x::Real) = ifelse(mod(x, 1) < 1/2, 1.0, -1.0)

"""
    trianglewave(x)

2π-periodic triangle wave function, min = -1, max = +1.

"""
function trianglewave(x::Real)
    modx = mod2pi(x + π/2)
    ifelse(modx < π, 2modx/π - 1, -2modx/π + 3)
end

"""
    trianglewave1(x)

1-periodic triangle wave function, min = -1, max = +1.

"""
function trianglewave1(x::Real)
    modx = mod(x + 1/4, 1.0)
    ifelse(modx < 1/2, 4modx - 1, -4modx + 3)
end

"""
    sawtoothwave(x)

2π-periodic sawtooth wave function, min = -1, max = +1.

"""
sawtoothwave(x::Real) = rem2pi(x, RoundNearest)/π

"""
    sawtoothwave1(x)

1-periodic sawtooth wave function, min = -1, max = +1.

"""
sawtoothwave1(x::Real) = rem(x, 1.0, RoundNearest)*2

end # module
