subroutine wavef
    external w2, w3
    common /quan1/a(3),b(3),c(3),k(3),e(3)
    real k

    call ground

    call minf(ci,eng,w2)
    c(2)=ci
    e(2)=eng

    call minf(ci,eng,w3)
    c(3)=ci
    e(3)=eng

    do n= 1,3
        if (c(n) .le. 0.01) then
            a(n)=0.0
            b(n)=0.0
            c(n)=0.0
            k(n)=0.0
            e(n)=0.0
        endif
    enddo

    return
end