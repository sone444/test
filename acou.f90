subroutine acou
    common /quan2/f(3,3)/quan3/wka(3,3)/den2/den(3) &
    /const/cons1,cons2,cons3
    do m = 1,3
        do n = 1,3
            wka(m,n)=cons*3*f(m,n)*den(n)
        enddo
    enddo
    return
end

