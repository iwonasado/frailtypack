



    subroutine gausshermiteBIS2011(ss,npg)

        double precision::ss,ss1
        double precision::auxfunca
        double precision,external::func30
        INTEGER::ii,jj,npg
        double precision,dimension(npg)::X,W

    if(npg.eq.10) then
    
        x(1)=-3.43615911884d0
        x(2)=-2.53273167423d0
        x(3)=-1.7566836493d0
        x(4)=-1.03661082979d0
        x(5)=-0.342901327224d0
        x(6)=0.342901327224d0
        x(7)=1.03661082979d0
        x(8)=1.7566836493d0
        x(9)=2.53273167423d0
        x(10)=3.43615911884d0
        
        w(1)=1.02545169137d0
        w(2)=0.820666126405d0
        w(3)=0.741441931944d0
        w(4)=0.703296323105d0
        w(5)=0.687081853951d0
        w(6)=0.687081853951d0
        w(7)=0.703296323105d0
        w(8)=0.741441931944d0
        w(9)=0.820666126405d0
        w(10)=1.02545169137d0
    endif


    if(npg.eq.15) then

        x(1)=-4.49999070731d0
        x(2)=-3.6699503734d0
        x(3)=-2.96716692791d0
        x(4)=-2.32573248617d0
        x(5)=-1.71999257519d0
        x(6)=-1.13611558521d0
        x(7)=-0.565069583256d0
        x(8)=0.d0
        x(9)=0.565069583256d0
        x(10)=1.13611558521d0
        x(11)=1.71999257519d0
        x(12)=2.32573248617d0
        x(13)=2.96716692791d0
        x(14)=3.6699503734d0
        x(15)=4.49999070731d0
    
        w(1)=0.948368970828d0
        w(2)=0.748607366017d0
        w(3)=0.666166005109d0
        w(4)=0.620662603527d0
        w(5)=0.593027449764d0
        w(6)=0.576193350284d0
        w(7)=0.567021153447d0
        w(8)=0.564100308726d0
        w(9)=0.567021153447d0
        w(10)=0.576193350284d0
        w(11)=0.593027449764d0
        w(12)=0.620662603527d0
        w(13)=0.666166005109d0
        w(14)=0.748607366017d0
        w(15)=0.948368970828d0
    endif

    if(npg.eq.20) then
        x(1)=-5.38748089001d0
        x(2)=-4.60368244955d0
        x(3)=-3.94476404012d0
        x(4)=-3.34785456738d0
        x(5)=-2.78880605843d0
        x(6)=-2.25497400209d0
        x(7)=-1.73853771212d0
        x(8)=-1.2340762154d0
        x(9)=-0.737473728545d0
        x(10)=-0.245340708301d0
        x(11)=0.245340708301d0
        x(12)=0.737473728545d0
        x(13)=1.2340762154d0
        x(14)=1.73853771212d0
        x(15)=2.25497400209d0
        x(16)=2.78880605843d0
        x(17)=3.34785456738d0
        x(18)=3.94476404012d0
        x(19)=4.60368244955d0
        x(20)=5.38748089001d0

        w(1)=0.898591961453d0
        w(2)=0.704332961176d0
        w(3)=0.62227869619d0
        w(4)=0.575262442852d0
        w(5)=0.544851742366d0
        w(6)=0.524080350949d0
        w(7)=0.509679027117d0
        w(8)=0.499920871336d0
        w(9)=0.493843385272d0
        w(10)=0.490921500667d0
        w(11)=0.490921500667d0
        w(12)=0.493843385272d0
        w(13)=0.499920871336d0
        w(14)=0.509679027117d0
        w(15)=0.524080350949d0
        w(16)=0.544851742366d0
        w(17)=0.575262442852d0
        w(18)=0.62227869619d0
        w(19)=0.704332961176d0
        w(20)=0.898591961453d0
    endif


    if(npg.eq.25) then

        x(1)=-6.16427243405d0
        x(2)=-5.41363635528d0
        x(3)=-4.78532036736d0
        x(4)=-4.21860944438d0
        x(5)=-3.69028287701d0
        x(6)=-3.18829492442d0
        x(7)=-2.70532023717d0
        x(8)=-2.23642013027d0
        x(9)=-1.77800112434d0
        x(10)=-1.32728070207d0
        x(11)=-0.881982756214d0
        x(12)=-0.440147298645d0
        x(13)=0.d0
        x(14)=0.440147298645d0
        x(15)=0.881982756214d0
        x(16)=1.32728070207d0
        x(17)=1.77800112434d0
        x(18)=2.23642013027d0
        x(19)=2.70532023717d0
        x(20)=3.18829492442d0
        x(21)=3.69028287701d0
        x(22)=4.21860944438d0
        x(23)=4.78532036736d0
        x(24)=5.41363635528d0
        x(25)=6.16427243405d0
    
        w(1)=0.862401988724d0
        w(2)=0.673022290239d0
        w(3)=0.592081693052d0
        w(4)=0.54491777224d0
        w(5)=0.513655789745d0
        w(6)=0.49150688189d0
        w(7)=0.475249738004d0
        w(8)=0.463141046576d0
        w(9)=0.454155885528d0
        w(10)=0.447661256587d0
        w(11)=0.443259189252d0
        w(12)=0.440705828912d0
        w(13)=0.439868722169d0
        w(14)=0.440705828912d0
        w(15)=0.443259189252d0
        w(16)=0.447661256587d0
        w(17)=0.454155885528d0
        w(18)=0.463141046576d0
        w(19)=0.475249738004d0
        w(20)=0.49150688189d0
        w(21)=0.513655789745d0
        w(22)=0.54491777224d0
        w(23)=0.592081693052d0
        w(24)=0.673022290239d0
        w(25)=0.862401988724d0
    endif

    if(npg.eq.30) then

        x(1)=-6.863345294d0
        x(2)=-6.13827922d0
        x(3)=-5.533147152d0
        x(4)=-4.988918969d0
        x(5)=-4.483055357d0
        x(6)=-4.003908604d0
        x(7)=-3.544443873d0
        x(8)=-3.09997053d0
        x(9)=-2.667132125d0
        x(10)=-2.243391468d0
        x(11)=-1.826741144d0
        x(12)=-1.4155278d0
        x(13)=-1.008338271d0
        x(14)=-0.603921059d0
        x(15)=-0.201128577d0
        x(16)=0.201128577d0
        x(17)=0.603921059d0
        x(18)=1.008338271d0
        x(19)=1.4155278d0
        x(20)=1.826741144d0
        x(21)=2.243391468d0
        x(22)=2.667132125d0
        x(23)=3.09997053d0
        x(24)=3.544443873d0
        x(25)=4.003908604d0
        x(26)=4.483055357d0
        x(27)=4.988918969d0
        x(28)=5.533147152d0
        x(29)=6.13827922d0
        x(30)=6.863345294d0

        w(1)=0.834247471d0
        w(2)=0.649097981d0
        w(3)=0.569402692d0
        w(4)=0.522525689d0
        w(5)=0.491057996d0
        w(6)=0.468374813d0
        w(7)=0.451321036d0
        w(8)=0.438177023d0
        w(9)=0.427918063d0
        w(10)=0.419895004d0
        w(11)=0.413679364d0
        w(12)=0.408981575d0
        w(13)=0.405605123d0
        w(14)=0.403419817d0
        w(15)=0.402346067d0
        w(16)=0.402346067d0
        w(17)=0.403419817d0
        w(18)=0.405605123d0
        w(19)=0.408981575d0
        w(20)=0.413679364d0
        w(21)=0.419895004d0
        w(22)=0.427918063d0
        w(23)=0.438177023d0
        w(24)=0.451321036d0
        w(25)=0.468374813d0
        w(26)=0.491057996d0
        w(27)=0.522525689d0
        w(28)=0.569402692d0
        w(29)=0.649097981d0
        w(30)=0.834247471d0

    endif
        auxfunca=0.d0
    ss=0.d0
    ss1=0.d0
!      call gaussher(gauss,npg)
    ii=0

    do ii=1,npg
        jj=0
        do jj=1,npg
            auxfunca=func30(x(ii),x(jj))
            ss1 = ss1+w(jj)*(auxfunca)
        end do
        ss = ss+w(ii)*ss1
!    write(*,*)'',ss!func30(x(ii),x(jj))
!    pause
    end do

    end subroutine gausshermiteBIS2011



