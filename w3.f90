function w3(ci)
    common /quan1/a(3), b(3), c(3), k(3), e(3) &
    /qwell/fp
    dimension d(8)
    real k
    c(3)=ci
    al=(c(1)+c(3))/2.0
    bt=(c(2)+c(3))/2.0
    ba3=bt+3.0*a(2)
    ba4=bt+4.0*a(2)
    ba5=bt+5.0*a(2)
    a(3)=(-1.0/3.0)*(al*al*ba5-bt*bt*ba3)/(al*ba5-bt*ba4)
    b(3)=(al*bt)/12.0*(al*ba4-bt*ba3)/(al*ba5-bt*ba4)
    
    d(1)=0.0
    d(2)=0.0
    d(3)=2.0
    d(4)=12.0*a(3)
    d(5)=24.0*(a(3)*a(3)+2.0*b(3))
    d(6)=240.0*a(3)*b(3)
    d(7)=720.0*b(3)*b(3)
    g3=0.0
    do i = 7,1,-1
        g3=(g3+d(i))/c(3)
    enddo

    d(1)=0.5
    d(2)=a(3)
    d(3)=2.0*a(3)*a(3)
    d(4)=12.0*a(3)*b(3)
    d(5)=36.0*b(3)*b(3)
    sa=0.0
    do i = 5,1,-1
        sa=(sa+d(i))/c(3)
    enddo

    d(1)=0.0
    d(2)=0.0
    d(3)=0.0
    d(4)=6.0
    d(5)=48.0*a(3)
    d(6)=120.0*(a(3)*a(3) + 2.0*b(3))
    d(7)=5040.0*b(3)*b(3)
    sb=0.0
    do i =8,1,-1
        sb=(sb+d(i))/c(3)
    enddo
    sb=sb*fp

    w3=(sa+sb)/g3
    e(3)=w3
    k(3)=1.0/SQRT(g3)
    return
end
