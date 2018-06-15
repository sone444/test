<<<<<<< HEAD
c 
    subroutine emc2d
    common
	&/com1/kx,ky,kz,ts,x,y,iv
	&/com2/p(10000,6),ip(10000)
	&/gamma/gm
	&/num/inum
	&/time/dt,t
	real kx,ky,kz
c
    tdt=t+dt
	do 30 n=1,inum
		kx = p(n,1)
		ky = p(n,2)
		kz = p(n,3)
		ts = p(n,4)
		x  = p(n,5)
		y  = p(n,6)
		iv = ip(n)
c
    	t1=t
    10	if (ts.gt.tdt) go to 20 
		tau=ts-t1 
        call drift(tau)
		call scat2
		t1=t1-alog(rnd())/gm
		go to 10 
	20	tau=tdt-t1
		call drift(tau)
c
        p(n,1) = kx
        p(n,2) = ky
		p(n,3) = kz
		p(n,4) = ts
		p(n,5) = x
		p(n,6) = y 
		ip(n)  = iv
 	30 continue
       return
       end
c

	
=======
subroutine emcd2
    common /com1/kx,ky,kz,ts,x,y,iv &
    /com2/p(10000,6), ip(10000) &
    /ganmma/gm/num/inum/time/dt,t
    real kx,ky,kz
    
    tdt = t + dt
    do n = 1, inum
        kx = p(n,1)
        ky = p(n,2)
        kz = p(n,3)
        ts = p(n,4)
        x = p(n,5)
        y = p(n,6)
        iv = ip(n)
        t1 = t
    10  if (ts .gt. tdt) go to 20
        tau=ts-t1
        call drift(tau)
        call scat2
        t1 = ts
        ts = t1 - alog(rnd())/gm
        go to 10
    20  tau = tdt-t1
        call drift(tau)

        p(n,1) = kx
        p(n,2) = ky
        p(n,3) = kz
        p(n,4) = ts
        p(n,5) = x
        p(n,6) = y
        ip(n) = iv
    enddo
    return
end



        
>>>>>>> b0d64a7c793d569300057f4ad7c1964dacce875f
