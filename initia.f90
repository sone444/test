subroutine initia
    common /com2/p(10000,6), ip(10000)/ek/hhm,smh &
    /bf/bktq/gamma/gm/num/inum

    parameter (pi2=2.0*3.14159265)

    inum = 10000

    do n=1, inum
        e = -bktq*alog(rnd())*1.5
        ak = smh*SQRT(e)
        cn = 1.0-2.0*rnd()
        sn = SQRT(1.0-cn*cn)
        fai = pi2*rnd()
        p(n,1)=ak*sn*COS(fai)
        p(n,2)=ak*sn*SIN(fai)
        p(n,3)=ak*cn
        p(n,4)=-alog(rnd())/gm
        p(n,5)=0.0
        p(n,6)=0.0
        ip(n)=-1
    enddo

    return
end