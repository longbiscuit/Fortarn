      SUBROUTINE USDFLD(FIELD,STATEV,PNEWDT,DIRECT,T,CELENT, 
     1 TIME,DTIME,CMNAME,ORNAME,NFIELD,NSTATV,NOEL,NPT,LAYER, 
     2 KSPT,KSTEP,KINC,NDI,NSHR,COORD,JMAC,JMATYP,MATLAYO, LACCFLA) 

      INCLUDE 'ABA_PARAM.INC' 

      CHARACTER*80 CMNAME,ORNAME 
      CHARACTER*3  FLGRAY(15) 
      DIMENSION FIELD(NFIELD),STATEV(NSTATV),DIRECT(3,3), T(3,3),
     1 TIME(2) 
      DIMENSION ARRAY(15),JARRAY(15),JMAC(*),JMATYP(*),COORD(*)
      
      
      Field(1) = 1.0
      CALL GETVRM('S',ARRAY,JARRAY,FLGRAY,JRCD,JMAC,JMATYP, 
     1 MATLAYO,LACCFLA) 
      S11 = array(1)
      S22 = array(2)
      S33 = array(3)
      sigma_m = (abs(S11)+abs(S22)+abs(S33)) / 3.0
      E_m = 560.0*100.0*(sigma_m/100.0)**0.6
      Field(1) = E_m 
      
      return
      end subroutine USDFLD
