c
    subroutine coef(m,n)
    common
    &/quan1/a(3),b(3),c(c),k(3),e(3) 
    &/quan2/f(3,3)
    dimension al(13),bt(0:4),d(0:4)
    real k,kmkn
c
    parameter(pi=3.1415927)
c
    alf=(c(m)+c(n))/2.0
    al(1)=alf
    do 10 i=2,13
10  al(i)=al(i-1)*alf
    kmkn=k(m)*k(n)
    bt(0)=2.0*kmkn
    bt(1)=6.0*kmkn*(a(m)+a(n))
    bt(2)=24.0*kmkn*(a(m)*a(n)+b(m)+b(n))
    bt(3)=120.0*kmkn*(a(m)*a(n)+b(m)*a(n))
    bt(4)=720.0*kmkn*b(m)*b(n)
    d(0)=bt(0)*bt(0)
    d(1)=(2.0*alf*bt(0)*bt(1))-(2.0*bt(0)*bt(2))+(bt(1)*bt(1))
    d(2)=(4.0*al(2)*bt(0)*bt(2))-(6.0*alf*bt(0)*bt(3))
    &    +(2.0*alf*bt(1)*bt(2))+(2.0*bt(0)*bt(4))
    &    -(2.0*bt(1)*bt(3))+(bt(2)*bt(2))
    d(3)=(8.0*al(3)*bt(0)*bt(3))-(16.0*al(2)*bt(0)*bt(4))
    &    +(4.0*al(2)*bt(1)*bt(3))-(6.0*alf*bt(1)*bt(4))
    &    +(2.0*alf*bt(2)*bt(3))-(2.0*bt(2)*bt(4))+(bt(3)*bt(3))
    d(4)=(16.0*al(4)*bt(0)*bt(4))+(8.0*al(3)*bt(1)*bt(4))
    &    +(4.0*al(2)*bt(2)*bt(4))+(2.0*alf*bt(3)*bt(4))+(bt(4)*bt(4))
c
    f(m,n)=pi*(3.0/8.0*d(0))+(5.0/16.0*d(1)/al(2))+
    &     (35.0/128.0*d(2)/al(4))+(63.0/256.0*d(3)/al(6))+
    &     (231.0/1024.0*d(4)/al(8))/al(5)
    return
    end
    