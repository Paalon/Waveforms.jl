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

Compute 2π-periodic square wave of `x`. min = -1, max = +1.
"""
squarewave(x::Real) = ifelse(mod2pi(x) < π, 1.0, -1.0)

"""
    squarewave(x, θ)

Compute 2π-periodic square wave of `x`. min = -1, max = +1.
squarewave(x) = +1.0 for 0   < mod(x, 2π) < 2π0,
squarewave(x) = -1.0 for 2π0 < mod(x, 2π) < 2π.
"""
squarewave(x::Real, θ::Real) = ifelse(mod2pi(x) < 2π*θ, 1.0, -1.0)

"""
    squarewave1(x)

Compute 1-periodic square wave of `x`. min = -1, max = +1.
"""
squarewave1(x::Real) = ifelse(mod(x, 1) < 1/2, 1.0, -1.0)

"""
    squarewave1(x, θ)

Compute ``1``-periodic square wave of `x` with a duty cycle `θ`
and a peak amplitude ``1``.
"""
function squarewave1(x::Real, θ::Real)
    0 ≤ θ ≤ 1 || throw(DomainError(θ, "squwarewave1(x, θ) is only defined for 0 ≤ θ ≤ 1."))
    ifelse(mod(x, 1) < θ, 1.0, -1.0)
end

"""
    trianglewave(x)

Compute 2π-periodic triangle wave of `x`. min = -1, max = +1.
"""
function trianglewave(x::Real)
    modx = mod2pi(x + π/2)
    ifelse(modx < π, 2modx/π - 1, -2modx/π + 3)
end

"""
    trianglewave1(x)

Compute 1-periodic triangle wave of `x`. min = -1, max = +1.
"""
function trianglewave1(x::Real)
    modx = mod(x + 1/4, 1.0)
    ifelse(modx < 1/2, 4modx - 1, -4modx + 3)
end

"""
    sawtoothwave(x)

Compute 2π-periodic sawtooth wave of `x`. min = -1, max = +1.
"""
sawtoothwave(x::Real) = rem2pi(x, RoundNearest)/π

"""
    sawtoothwave1(x)

Compute 1-periodic sawtooth wave of `x`. min = -1, max = +1.
"""
sawtoothwave1(x::Real) = rem(x, 1.0, RoundNearest)*2

end # module
