using Waveforms
@static if VERSION < v"0.7.0-DEV.2005"
    using Base.Test
else
    using Test
end

# test
@test squarewave(0) == 1.0
@test squarewave(1π) == 1.0
@test squarewave(2π) == -1.0
