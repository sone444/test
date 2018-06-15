subroutine rates
    common /quan3/wka(3,3)/quan4/wkoe(3,3),wkoa(3,3) &
    /rate2/hwo, swk2(3,9)/gamma/gm
    dimension w(0:9)
    do m = 1,3
        w(0)=0.0
        do n = 1,3
            w(n)=w(n-1)+wkoe(m,n)
        enddo

        do n=4, 6
            w(n)=w(n-1)+wkoa(m,n-3)
        enddo

        do n = 7,9
            w(n)=w(n-1)+wka(m,n-6)
        enddo

        do n = 1,9
            swk2(m,n)=w(n)
        enddo
    enddo

    gm=swk2(1,9)
    do m = 2,3
        if(swk2(m,9) .gt. gm) gm = swk2(m,9)
    enddo

    do m = 1,3
        do n = 1,9
            swk2(m,n)=swk2(m,n)/gm
        enddo
    enddo
    write(8,*) 'gm = ',gm
    return
end

