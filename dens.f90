subroutine dens
    common /quan1/a(3), b(3), c(3), k(3), e(3) &
    /den2/den(3)/eng2/eng(3)
    real k

    do n = 1, 3
        eng(n) = e(n)
        den(n) = SQRT(e(n))
    enddo

    den(3) = den(3) - den(2)
    den(2) = den(2) - den(1)
    return
end