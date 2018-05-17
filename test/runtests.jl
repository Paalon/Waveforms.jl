using Waveforms
@static if VERSION < v"0.7.0-DEV.2005"
    using Base.Test
else
    using Test
end

# tests

@test squarewave(0.4) == 1.0
@test squarewave1(0.4) == 1.0
@test sawtoothwave(0.4) == 0.12732395447351627
@test sawtoothwave1(0.4) == 0.8
@test trianglewave(0.4) == 0.2546479089470326
@test trianglewave1(0.4) == 0.3999999999999999

@test squarewave(3π/7) == 1.0
@test squarewave1(3π/7) == 1.0
@test sawtoothwave(3π/7) == 0.42857142857142855
@test sawtoothwave1(3π/7) == 0.6927937030769655
@test trianglewave(3π/7) == 0.8571428571428572
@test trianglewave1(3π/7) == 0.6144125938460689
