subroutine ground
    common /quan1/a(3), b(3), c(3), k(3), e(3) &
    /qwell/fp
    real k

    c(1)=(6.0*fp)**(1.0/3.0)
    e(1)=0.25*c(1)*c(1)+3.0*fp/c(1)
    k(1)=SQRT(c(1)*c(1)*c(1)/2.0)
    a(1)=0.0
    b(1)=0.0
    return
end

    