    subroutine pwave
c
    call wavef
c
    do 10 m=1,3
    do 10 n=1,3
        call coef(m,n)
10  continue
    return
    end
    