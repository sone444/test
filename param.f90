subroutine param
    common /bf/bktq/qwell/fp/temp/tem/dri/qh/ek/smh,hhm &
    /hm3/hm/const/cons1,cons2,cons3/rate2/hwo,swk2(3,9)/random/iseed
    real no

    parameter(pi = 3.141459 ,   bk = 1.38066e-23)
    parameter(q = 1.60219e-19 , h = 1.05459e-34)
    parameter(ep0 = 8.85419e-12,am0 = 9.10953e-31)

    ! seed value for random function

    iseed = 38467

    ! effective mass, band gap, delectric constant

    am = 0.39*m0
    eg = 1.12
    eps = 11.7*ep0

    !phonone scattering parameter

    rou = 2329.0
    sv = 9040.0
    cl = rou*sv*sv
    da = 6.55*q
    d0 = 1.1e11*q
    hwo = 0.06
    z1 = 6.0
    bkt = bk*tem
    bktq = bkt/q
    
    wo = hwo*q/h
    no = 1.0/(EXP(hwo/bktq)-1.0)

    qh = q/h
    smh = SQRT(2.0*am)/h*SQRT(q)
    hhm = h/2.0/am*h/q
    hm = h/am

    fp = fp/smh

    dos = (SQRT(2.0*am)*SQRT(q)/h)**3/4.0/pi/pi

    aco = 2.0*pi*da/h*da*bktq/cl
    oge = pi*d0/q*d0/rou/wo*(no+1.0)
    oga =oge*no/(1.0+no)

    cons1 = (z1-1.0)*oge*dos
    cons2 = (z1-1.0)*oga*dos
    cons3 = aco*dos

    return
end