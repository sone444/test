function rnd()
    common /random/iseed
    parameter(mi=1048576, in=1027)
    iseed=mod(in*iseed,mi)
    rnd=float(iseed)/float(mi)
    return
end

