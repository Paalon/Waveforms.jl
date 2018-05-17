# __precompile__()

module Waveforms

export squarewave, sawtoothwave, trianglewave

"""
    squarewave(x)

2π-periodic square wave function, min = -1, max = +1.

"""

squarewave(x::Real) = ifelse(mod2pi(x) < π, 1.0, -1.0)
squarewave(x::Real, θ::Real) = ifelse(mod2pi(x) < 2π*θ, 1.0, -1.0)

"""
    trianglewave(x)

2π-periodic triangle wave function, min = -1, max = +1.

"""
function trianglewave(x::Real)
    modx = mod2pi(x + π/2)
    ifelse(modx < π, 2modx/π - 1, -2modx/π + 3)
end

"""
    sawtoothwave(x)

2π-periodic sawtooth wave function, min = -1, max = +1.

"""
sawtoothwave(x::Real) = mod2pi(x-π)/π - 1

end # module
