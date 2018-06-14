subroutine scat2
    common /com1/kx,ky,kz,ts,x,y,iv &
    /ek/smh,hhm/eng2/eng(3)/rate2/hwo,swk2(3,9)
    real kx,ky,kz

    parameter (pi=3.14159,q = 1.60219e-19)

    i=-iv
    sk=kx*kx+ky*ky
    ei=hhm*sk
    r1=rnd()
    do j = 1, 9
        if(r1 .lt. swk2(i, j)) then
            js = j
            go to (1, 1, 1, 2, 2, 2, 3, 3, 3), js
        endif
    enddo
    return

    1   is=js
        hws=hwo+eng(is)-eng(i)
        ef=ei-hws
        go to 4

    2   is=js-3
        hws=hwo-eng(is)+eng(i)
        ef=ei+hws
        go to 4

    3   is=js-6
        ef=ei-eng(is)+eng(i)

    4   if(ef .le. 0.0) return
        ak=smh*SQRT(ef)
        teta=2.0*pi*rnd()
        kx=ak*COS(teta)
        ky=ak*SIN(teta)
        iv=-is
        return
    end
