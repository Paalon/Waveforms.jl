using Documenter, Waveforms

makedocs(
    modules=[Waveforms],
    sitename="Waveforms.jl",
    pages=[
        "Home" => "index.md",
    ],
)
deploydocs(
    repo="github.com/Paalon/Waveforms.jl.git",
)
