using Test, Waveforms

const x = 0.4
const y = 3π/7
const θ = 0.05

@testset "square waves" begin
    @testset "squarewave" begin
        @test squarewave(x) == 1.0
        @test squarewave(y) == 1.0
        @test isequal(squarewave(missing), missing)
        @test squarewave(x, θ) == -1.0
        @test squarewave(y, θ) == -1.0
        @test_throws DomainError squarewave(x, -1.0)
        @test_throws DomainError squarewave(x, 2.0)
        @test isequal(squarewave(missing, θ), missing)
        @test isequal(squarewave(x, missing), missing)
        @test isequal(squarewave(missing, missing), missing)
    end
    @testset "squarewave1" begin
        @test squarewave1(x) == 1.0
        @test squarewave1(y) == 1.0
        @test isequal(squarewave1(missing), missing)
        @test squarewave1(x, θ) == -1.0
        @test squarewave1(y, θ) == -1.0
        @test_throws DomainError squarewave1(x, -1.0)
        @test_throws DomainError squarewave1(x, 2.0)
        @test isequal(squarewave1(missing, θ), missing)
        @test isequal(squarewave1(x, missing), missing)
        @test isequal(squarewave1(missing, missing), missing)
    end
end

@testset "triangle waves" begin
    @testset "trianglewave" begin
        @test trianglewave(x) == 0.2546479089470326
        @test trianglewave(y) == 0.8571428571428572
        @test isequal(trianglewave(missing), missing)
    end
    @testset "trianglewave1" begin
        @test trianglewave1(x) == 0.3999999999999999
        @test trianglewave1(y) == 0.6144125938460689
        @test isequal(trianglewave1(missing), missing)
    end
end

@testset "sawtooth waves" begin
    @testset "sawtoothwave" begin
        @test sawtoothwave(x) == 0.12732395447351627
        @test sawtoothwave(y) == 0.42857142857142855
        @test isequal(sawtoothwave(missing), missing)
    end
    @testset "sawtoothwave1" begin
        @test sawtoothwave1(x) == 0.8
        @test sawtoothwave1(y) == 0.6927937030769655
        @test isequal(sawtoothwave1(missing), missing)
    end
end
