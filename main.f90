program main
common /field/fx/qwell/fp/temp/tem/gamma/gm/time/dt, t

! open file
open(unit=5, file='data4')
open(unit=8, file='outf')

! input data
read(5, *) tem
read(5, *) fp
read(5, *) fx

write(8, *) 'Lattice Temperture = ',tem,    ' K     '
write(8, *) 'Field (perpendicular) = ',fp/1.e5, '  kV/cm'
write(8, *) 'Field (parallel)   =',fx/1.e5, '  kV/cm'

! paramator

call param

! calcurate scattering rate

call pwave
call dens
call acou
call optic
call rates

! initial condition

call initia

tmax = 2.0e-12
dt = 2.0e-14
itl = ifix(tmax/dt)

! Multiple Monte Calro Simulation

do it=0, itl
    write(*,*) 'it = ', it
    t = dt*float(it)
    call emc2d
    call out
enddo

! close file
close(5)
close(8)
stop

end program main

