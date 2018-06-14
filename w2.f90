function w2(ci)
    common /quan1/a(3), b(3), c(3), k(3), e(3) &
    /qwell/fp
    dimension d(6)
    real k
    c(2)=ci
    a(2)=-(c(1)+c(2))/6.0

    d(1)=0.0
    d(2)=0.0
    d(3)=2.0
    d(4)=12.0*a(2)
    d(5)=24.0*a(2)*a(2)
    g2=0.0
    do i =5, 1, -1
        g2=(g2+d(i))/c(2)
    enddo

    d(1)=0.5
    d(2)=a(2)
    d(3)=2.0*a(2)*a(2)
    sa=0.0
    do i = 3,1,-1
        sa=(sa+d(i))/c(2)
    enddo

    d(1)=0.0
    d(2)=0.0
    d(3)=0.0
    d(4)=6.0
    d(5)=48.0*a(2)
    d(6)=120.0*a(2)*a(2)
    sb = 0.0
    do i = 6,1,-1
        sb=(sb+d(i))/c(2)
    enddo

    sb = sb*fp

    w2=(sa+sb)/g2
    e(2)=w2
    k(2)=1.0/SQRT(g2)
    b(2)=0.0
    return
end