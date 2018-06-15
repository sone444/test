subroutine optics
    common /quan2/f(3,3)/quan4/wkoe(3,3),wkoa(3,3)/den2/den(3) &
    /const/cons1,cons2,cons3

    do m = 1,3
        do n = 1,3
            wkoe(m,n)=cons1*f(m,n)*den(n)
            wkoe(m,n)=cons2*f(m,n)*den(n)
        enddo
    enddo
    return
end
