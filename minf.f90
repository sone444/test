subroutine minf(ci, w, f)
    external f
    a = 0.01
    b = 2.0
    do i = 1, 20
        c = (a+b)/2.0
        f2=f(c + 1.0e-4)
        f1=f(c)
        df=f2-f1
        if(df .lt. 0.0) then
            a=c
        else
            b=c
        endif
    enddo

    ci=c
    w=f1
    return
end