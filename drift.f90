subroutine drift
    common /com1/kx,ky,kz,ts,x,y,iv &
    /dri/qh/field/fx/hm3/hm

    real kx, ky, kz

    dkx = qh*fx*tau
    kx = kx+dkx

    hmt=hm*tau
    x=x+hmt*(kx+0.5*dkx)
    y=y+hmt*ky

    return
end