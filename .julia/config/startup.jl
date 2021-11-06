atreplinit() do repl
    try
        @eval using OhMyREPL
        @eval colorscheme!("OneDark")
    catch e
        @warn "error while importing OhMyREPL" e
    end
    @async begin
        # reinstall keybindings to work around https://github.com/KristofferC/OhMyREPL.jl/issues/166
        sleep(1)
        OhMyREPL.Prompt.insert_keybindings()
    end
end
