using Waveforms
@static if VERSION < v"0.7.0-DEV.2005"
    using Base.Test
else
    using Test
end

# tests

@test squarewave(0) == 1.0
@test squarewave(1π) == 1.0
@test squarewave(2π) == -1.0
@test squarewave(0.4) == 1.0
@test sawtoothwave(0.4) == 0.1273239544735163
@test trianglewave(0.4) == 0.2546479089470326
