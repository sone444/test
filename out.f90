subroutine out
    common
    &/com2/p(10000,6),ip(10000)
    &/num/inum
    &/hm3/hm
    &/ek/smh,hhm
    &/eng2/eng(3)
    &time/dt,t
    dimension nn(3)
    
    x = 0.0
    ve = 0.0
    en = 0.0
    nn(1) = 0
    nn(2) = 0
    nn(3) = 0
    
    do 10n=1,inum
        iv = ip(n)
        skx = p(n,1)*p(n,1)
        sky = p(n,2)*p(n,2)
        x = x + p(n,5)
        ve = ve + p(n,1)*hm
        en = en + hhm*(skx+sky) + (eng(-iv)-eng(1))
        nn(-iv) = nn(-iv) + 1
10  continue
    x = x / float(inum)
    ve = ve / float(inum)
    en = en / float(inum)    
!( 時間 vs 距離, 電子速度, エネルギー )
    write(8,*) t,' ',x,' ',ve,' ',en
    return
end