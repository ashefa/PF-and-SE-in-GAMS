sets
n index of buses /n1*n24/
alias(n,np);
scalar
baseMVA /100/;
table bus(n,*) bus data
          type     Pd       Qd       Gs       Bs       area     Vm       Va       baseKV     zone     Vmax       Vmin
n1        2        108      22       0        0        1        1        0        138        1        1.05        0.95
n2        2        97       20       0        0        1        1        0        138        1        1.05        0.95
n3        1        180      37       0        0        1        1        0        138        1        1.05        0.95
n4        1        74       15       0        0        1        1        0        138        1        1.05        0.95
n5        1        71       14       0        0        1        1        0        138        1        1.05        0.95
n6        1        136      28       0        -100     2        1        0        138        1        1.05        0.95
n7        2        125      25       0        0        2        1        0        138        1        1.05        0.95
n8        1        171      35       0        0        2        1        0        138        1        1.05        0.95
n9        1        175      36       0        0        1        1        0        138        1        1.05        0.95
n10       1        195      40       0        0        2        1        0        138        1        1.05        0.95
n11       1        0        0        0        0        3        1        0        230        1        1.05        0.95
n12       1        0        0        0        0        3        1        0        230        1        1.05        0.95
n13       3        265      54       0        0        3        1        0        230        1        1.05        0.95
n14       2        194      39       0        0        3        1        0        230        1        1.05        0.95
n15       2        317      64       0        0        4        1        0        230        1        1.05        0.95
n16       2        100      20       0        0        4        1        0        230        1        1.05        0.95
n17       1        0        0        0        0        4        1        0        230        1        1.05        0.95
n18       2        333      68       0        0        4        1        0        230        1        1.05        0.95
n19       1        181      37       0        0        3        1        0        230        1        1.05        0.95
n20       1        128      26       0        0        3        1        0        230        1        1.05        0.95
n21       2        0        0        0        0        4        1        0        230        1        1.05        0.95
n22       2        0        0        0        0        4        1        0        230        1        1.05        0.95
n23       2        0        0        0        0        3        1        0        230        1        1.05        0.95
n24       1        0        0        0        0        4        1        0        230        1        1.05        0.95;
table gen(n,*) generator data
          Pg       Qg       Qmax       Qmin        Vg           mBase      status   Pmax       Pmin      Pc1      Pc2      Qc1min   Qc1max   Qc2min   Qc2max   ramp_agc ramp_10  ramp_30  ramp_q   apf
n1        172      0        80         0           1.035        100        1        192        62.4      0        0        0        0        0        0        0        0        0        0        0
n2        172      0        80         0           1.035        100        1        192        62.4      0        0        0        0        0        0        0        0        0        0        0
n7        240      0        180        0           1.025        100        1        300        75        0        0        0        0        0        0        0        0        0        0        0
n13       285.3    0        240        0           1.02         100        1        591        207       0        0        0        0        0        0        0        0        0        0        0
n14       0        35.3     200        -50         0.98         100        1        0          0         0        0        0        0        0        0        0        0        0        0        0
n15       215      0        110        -50         1.014        100        1        215        66.3      0        0        0        0        0        0        0        0        0        0        0
n16       155      0        80         -50         1.017        100        1        155        54.3      0        0        0        0        0        0        0        0        0        0        0
n18       400      0        200        -50         1.05         100        1        400        100       0        0        0        0        0        0        0        0        0        0        0
n21       400      0        200        -50         1.05         100        1        400        100       0        0        0        0        0        0        0        0        0        0        0
n22       300      0        96         -60         1.05         100        1        300        60        0        0        0        0        0        0        0        0        0        0        0
n23       660      0        310        -125        1.05         100        1        660        248.6     0        0        0        0        0        0        0        0        0        0        0;
table line(n,n,*) branch data
            r        x             b        rateA      rateB      rateC      ratio    angle    status   angmin      angmax
n1.n2       0.0026   0.0139        0.4611   175        250        200        0        0        1        -360        360
n1.n3       0.0546   0.2112        0.0572   175        208        220        0        0        1        -360        360
n1.n5       0.0218   0.0845        0.0229   175        208        220        0        0        1        -360        360
n2.n4       0.0328   0.1267        0.0343   175        208        220        0        0        1        -360        360
n2.n6       0.0497   0.192         0.052    175        208        220        0        0        1        -360        360
n3.n9       0.0308   0.119         0.0322   175        208        220        0        0        1        -360        360
n3.n24      0.0023   0.0839        0        400        510        600        1.03     0        1        -360        360
n4.n9       0.0268   0.1037        0.0281   175        208        220        0        0        1        -360        360
n5.n10      0.0228   0.0883        0.0239   175        208        220        0        0        1        -360        360
n6.n10      0.0139   0.0605        2.459    175        193        200        0        0        1        -360        360
n7.n8       0.0159   0.0614        0.0166   175        208        220        0        0        1        -360        360
n8.n9       0.0427   0.1651        0.0447   175        208        220        0        0        1        -360        360
n8.n10      0.0427   0.1651        0.0447   175        208        220        0        0        1        -360        360
n9.n11      0.0023   0.0839        0        400        510        600        1.03     0        1        -360        360
n9.n12      0.0023   0.0839        0        400        510        600        1.03     0        1        -360        360
n10.n11     0.0023   0.0839        0        400        510        600        1.02     0        1        -360        360
n10.n12     0.0023   0.0839        0        400        510        600        1.02     0        1        -360        360
n11.n13     0.0061   0.0476        0.0999   500        600        625        0        0        1        -360        360
n11.n14     0.0054   0.0418        0.0879   500        625        625        0        0        1        -360        360
n12.n13     0.0061   0.0476        0.0999   500        625        625        0        0        1        -360        360
n12.n23     0.0124   0.0966        0.203    500        625        625        0        0        1        -360        360
n13.n23     0.0111   0.0865        0.1818   500        625        625        0        0        1        -360        360
n14.n16     0.005    0.0389        0.0818   500        625        625        0        0        1        -360        360
n15.n16     0.0022   0.0173        0.0364   500        600        625        0        0        1        -360        360
n15.n21     0.0063   0.049         0.103    500        600        625        0        0        1        -360        360
n21.n15     0.0063   0.049         0.103    500        600        625        0        0        1        -360        360
*n15.n21     0.0063   0.049         0.103    500        600        625        0        0        1        -360        360
n15.n24     0.0067   0.0519        0.1091   500        600        625        0        0        1        -360        360
n16.n17     0.0033   0.0259        0.0545   500        600        625        0        0        1        -360        360
n16.n19     0.003    0.0231        0.0485   500        600        625        0        0        1        -360        360
n17.n18     0.0018   0.0144        0.0303   500        600        625        0        0        1        -360        360
n17.n22     0.0135   0.1053        0.2212   500        600        625        0        0        1        -360        360
n18.n21     0.0033   0.0259        0.0545   500        600        625        0        0        1        -360        360
n21.n18     0.0033   0.0259        0.0545   500        600        625        0        0        1        -360        360
*n18.n21     0.0033   0.0259        0.0545   500        600        625        0        0        1        -360        360
n19.n20     0.0051   0.0396        0.0833   500        600        625        0        0        1        -360        360
n20.n19     0.0051   0.0396        0.0833   500        600        625        0        0        1        -360        360
*n19.n20     0.0051   0.0396        0.0833   500        600        625        0        0        1        -360        360
n20.n23     0.0028   0.0216        0.0455   500        600        625        0        0        1        -360        360
n23.n20     0.0028   0.0216        0.0455   500        600        625        0        0        1        -360        360
*n20.n23     0.0028   0.0216        0.0455   500        600        625        0        0        1        -360        360
n21.n22     0.0087   0.0678        0.1424   500        600        625        0        0        1        -360        360;
parameter
y(n,np);
*theta(n,np)

y(n,np)$line(n,np,'x')=sqrt(sqr(line(n,np,'r'))/sqr(sqr(line(n,np,'r'))+sqr(line(n,np,'x')))+sqr((line(n,np,'b')$(ord(n) eq ord(np))/2)-(line(n,np,'x')/(sqr(line(n,np,'r'))+sqr(line(n,np,'x'))))));
y(n,np)$(line(n,np,'x') and line(n,np,'ratio'))=sqrt(sqr(line(n,np,'r'))/sqr(sqr(line(n,np,'r'))+sqr(line(n,np,'x')))+sqr((line(n,np,'b')$(ord(n) eq ord(np))/2)-(line(n,np,'x')/(sqr(line(n,np,'r'))+sqr(line(n,np,'x'))))))*(1/line(n,np,'ratio'));
y(n,np)$(ord(n) gt ord(np))=y(np,n);
y(n,n)=sqrt(sqr(bus(n,'Gs'))+sqr(bus(n,'Bs')))/baseMVA+
sum(np,sqrt(sqr(line(n,np,'r'))/sqr(sqr(line(n,np,'r'))+sqr(line(n,np,'x')))+sqr((line(n,np,'b')$(ord(n) ne ord(np))/2)-(line(n,np,'x')/(sqr(line(n,np,'r'))+sqr(line(n,np,'x'))))))$line(n,np,'x')+
       sqrt(sqr(line(np,n,'r'))/sqr(sqr(line(np,n,'r'))+sqr(line(np,n,'x')))+sqr((line(np,n,'b')$(ord(n) ne ord(np))/2)-(line(np,n,'x')/(sqr(line(np,n,'r'))+sqr(line(np,n,'x'))))))$line(np,n,'x'));
*loop(n,
*y(n,np)$line(n,np,'x')=sqrt(sqr(line(n,np,'r'))/sqr(sqr(line(n,np,'r'))+sqr(line(n,np,'x')))+sqr((line(n,np,'b')/2)-(line(n,np,'x')/(sqr(line(n,np,'r'))+sqr(line(n,np,'x'))))));
*);
*loop(np,
*y(np,n)$line(n,np,'x')=sqrt(sqr(line(n,np,'r'))/sqr(sqr(line(n,np,'r'))+sqr(line(n,np,'x')))+sqr((line(n,np,'b')$(ord(n) eq ord(np))/2)-(line(n,np,'x')/(sqr(line(n,np,'r'))+sqr(line(n,np,'x'))))));
*);

*loop(n,
*theta(n,np)$line(n,np,'x')=arctan(((line(n,np,'b')$(ord(n) eq ord(np))/2)+(-line(n,np,'x')/(sqr(line(n,np,'r'))+sqr(line(n,np,'x')))))/(line(n,np,'r')/(sqr(line(n,np,'r'))+sqr(line(n,np,'x')))));
*theta(n,np)$(mapVal(theta(n,np)) eq 4)=pi/2;);
*loop(np,
*theta(np,n)$line(n,np,'x')=arctan(((line(n,np,'b')/2)+(-line(n,np,'x')/(sqr(line(n,np,'r'))+sqr(line(n,np,'x')))))/(line(n,np,'r')/(sqr(line(n,np,'r'))+sqr(line(n,np,'x')))));
*theta(np,n)$(mapVal(theta(np,n)) eq 4)=pi/2;);

*theta(n,n)=arctan(sum(np$line(n,np,'x'),((bus(n,'Bs')/baseMVA)+(line(n,np,'b')/2)+(-line(n,np,'x')/(sqr(line(n,np,'r'))+sqr(line(n,np,'x'))))))/sum(np$line(n,np,'x'),((bus(n,'Gs')/baseMVA)+(line(n,np,'r')/(sqr(line(n,np,'r'))+sqr(line(n,np,'x')))))));
*theta(n,n)$(mapVal(theta(n,n)) eq 4)=-pi/2;
table theta(n,n)
             n1          n2          n3          n4          n5          n6

n1       -1.373      -1.386      -1.318                  -1.318
n2       -1.385      -1.317                  -1.317                  -1.318
n3       -1.316                  -1.452
n4                   -1.317                  -1.318
n5       -1.318                                          -1.318
n6                   -1.316                                          -1.342
n9                               -1.317      -1.318
n10                                                      -1.318      -1.327
n24                              -1.543

  +          n7          n8          n9         n10         n11         n12

n3                               -1.318
n4                               -1.318
n5                                           -1.318
n6                                           -1.345
n7       -1.317      -1.317
n8       -1.317      -1.317      -1.318      -1.318
n9                   -1.317      -1.543                  -1.543      -1.543
n10                  -1.317                  -1.543      -1.543      -1.543
n11                              -1.543      -1.543      -1.443
n12                              -1.543      -1.543                  -1.443
n13                                                      -1.443      -1.443
n14                                                      -1.442
n23                                                                  -1.442

  +         n13         n14         n15         n16         n17         n18

n11      -1.443      -1.442
n12      -1.443
n13      -1.442
n14                  -1.443                  -1.443
n15                              -1.443      -1.444
n16                  -1.443      -1.444      -1.443      -1.444
n17                                          -1.444      -1.446      -1.446
n18                                                      -1.446      -1.444
n19                                          -1.442
n21                              -1.443                              -1.444
n22                                                      -1.442
n23      -1.442
n24                              -1.442

  +         n19         n20         n21         n22         n23         n24

n3                                                                   -1.543
n12                                                      -1.443
n13                                                      -1.443
n15                              -1.443                              -1.442
n16      -1.442
n17                                          -1.443
n18                              -1.444
n19      -1.443      -1.443
n20      -1.443      -1.442                              -1.442
n21                              -1.443      -1.443
n22                              -1.443      -1.571
n23                  -1.442                              -1.442
n24                                                                  -1.571;


variable
*z    objective function variable
vmag(n) voltage magnitude at bus N
vang(n) voltage angle at bus N
p(n)
q(n);
** voltage bounds
vang.lo(n)=-pi;
vang.up(n)=pi;
vmag.l(n)$(bus(n,'type') eq 1)=bus(n,'Vm');
vang.l(n)$(bus(n,'type') eq 1)=0;
*vmag.lo(n)=bus(n,'Vmin');
*vmag.up(n)=bus(n,'Vmax');
** reference bus
vmag.fx(n)$(bus(n,'type') eq 3)=gen(n,'Vg');
vang.fx(n)$(bus(n,'type') eq 3)=0;
p.lo(n)$(bus(n,'type') eq 3)=gen(n,'Pmin')/baseMVA;
p.up(n)$(bus(n,'type') eq 3)=gen(n,'Pmax')/baseMVA;
q.lo(n)$(bus(n,'type') eq 3)=gen(n,'Qmin')/baseMVA;
q.up(n)$(bus(n,'type') eq 3)=gen(n,'Qmax')/baseMVA;
** pv busses
vmag.fx(n)$(bus(n,'type') eq 2)=gen(n,'Vg');
p.fx(n)$(bus(n,'type') eq 2)=gen(n,'Pg')/baseMVA-bus(n,'Pd')/baseMVA;
q.lo(n)$(bus(n,'type') eq 2)=gen(n,'Qmin')/baseMVA;
q.up(n)$(bus(n,'type') eq 2)=gen(n,'Qmax')/baseMVA;
** pq busses
p.fx(n)$(bus(n,'type') eq 1)=-bus(n,'Pd')/baseMVA;
q.fx(n)$(bus(n,'type') eq 1)=-bus(n,'Qd')/baseMVA;
vmag.lo(n)$(bus(n,'type') eq 1)=bus(n,'Vmin');
vmag.up(n)$(bus(n,'type') eq 1)=bus(n,'Vmax');

equations
*obj
activepower(n)
reactivepower(n);
*obj..z=e=0;
*activepower(n)..p(n)=e=vmag(n)*sum(np,vmag(np)*y(n,np)*cos(vang(np)-vang(n)+theta(n,np)));
*reactivepower(n)..q(n)=e=-vmag(n)*sum(np,vmag(np)*y(n,np)*sin(vang(np)-vang(n)+theta(n,np)));
activepower(n)$(bus(n,'type') ne 3)..p(n)=e=sum(np,(sqr(vmag(n))*y(n,np)*cos(-theta(n,np))-vmag(n)*vmag(np)*y(n,np)*cos(-theta(n,np)+vang(n)-vang(np)))$line(n,np,'x'))-sum(np,(sqr(vmag(np))*y(np,n)*cos(-theta(np,n))-vmag(np)*vmag(n)*y(np,n)*cos(-theta(np,n)+vang(np)-vang(n)))$line(np,n,'x'));
reactivepower(n)$(bus(n,'type') eq 1)..q(n)=e=sum(np,(sqr(vmag(n))*y(n,np)*sin(-theta(n,np))-vmag(n)*vmag(np)*y(n,np)*sin(-theta(n,np)+vang(n)-vang(np)))$line(n,np,'x'))-sum(np,(sqr(vmag(np))*y(np,n)*sin(-theta(np,n))-vmag(np)*vmag(n)*y(np,n)*sin(-theta(np,n)+vang(np)-vang(n)))$line(np,n,'x'));

model PF /all/;
option cns = KNITRO;
solve PF using cns;
*  nlp minimizing z;mcp
p.l(n)$(bus(n,'type') eq 3)=sum(np,(sqr(vmag.l(n))*y(n,np)*cos(-theta(n,np))-vmag.l(n)*vmag.l(np)*y(n,np)*cos(-theta(n,np)+vang.l(n)-vang.l(np)))$line(n,np,'x'))-sum(np,(sqr(vmag.l(np))*y(np,n)*cos(-theta(np,n))-vmag.l(np)*vmag.l(n)*y(np,n)*cos(-theta(np,n)+vang.l(np)-vang.l(n)))$line(np,n,'x'));
q.l(n)$(bus(n,'type') ne 1)=sum(np,(sqr(vmag.l(n))*y(n,np)*sin(-theta(n,np))-vmag.l(n)*vmag.l(np)*y(n,np)*sin(-theta(n,np)+vang.l(n)-vang.l(np)))$line(n,np,'x'))-sum(np,(sqr(vmag.l(np))*y(np,n)*sin(-theta(np,n))-vmag.l(np)*vmag.l(n)*y(np,n)*sin(-theta(np,n)+vang.l(np)-vang.l(n)))$line(np,n,'x'));
display y,theta,p.l,q.l,vmag.l,vang.l;
execute_unload vmag,vang
parameter
pline(n,np)
qline(n,np);
*pline(np,n)=sqr(vmag.l(n))*(1/line(n,np,'x'))$line(n,np,'x')*cos(-pi/2)-vmag.l(n)*vmag.l(np)*(1/line(n,np,'x'))$line(n,np,'x')*cos(-(pi/2)+vang.l(n)-vang.l(np));
*pline(n,np)$line(n,np,'x')=sqr(vmag.l(np))*(1/line(n,np,'x'))*cos(-pi/2)-vmag.l(np)*vmag.l(n)*(1/line(n,np,'x'))$line(n,np,'x')*cos(-(pi/2)+vang.l(np)-vang.l(n));
pline(n,np)=sqr(vmag.l(n))*y(n,np)*cos(-theta(n,np))-vmag.l(n)*vmag.l(np)*y(n,np)*cos(-theta(n,np)+vang.l(n)-vang.l(np));
pline(np,n)=sqr(vmag.l(np))*y(np,n)*cos(-theta(np,n))-vmag.l(np)*vmag.l(n)*y(np,n)*cos(-theta(np,n)+vang.l(np)-vang.l(n));
*qline(np,n)=sqr(vmag.l(n))*(1/line(n,np,'x'))$line(n,np,'x')*sin(-pi/2)-vmag.l(n)*vmag.l(np)*(1/line(n,np,'x'))$line(n,np,'x')*sin(-(pi/2)+vang.l(n)-vang.l(np));
*qline(n,np)$line(n,np,'x')=sqr(vmag.l(np))*(1/line(n,np,'x'))$line(n,np,'x')*sin(-pi/2)-vmag.l(np)*vmag.l(n)*(1/line(n,np,'x'))$line(n,np,'x')*sin(-(pi/2)+vang.l(np)-vang.l(n));
qline(n,np)=sqr(vmag.l(n))*y(n,np)*sin(-theta(n,np))-vmag.l(n)*vmag.l(np)*y(n,np)*sin(-theta(n,np)+vang.l(n)-vang.l(np));
qline(np,n)=sqr(vmag.l(np))*y(np,n)*sin(-theta(np,n))-vmag.l(np)*vmag.l(n)*y(np,n)*sin(-theta(np,n)+vang.l(np)-vang.l(n));
parameter
sigma_s(n),      sigma_sline(n,np)
sigma_vmag(n),   sigma_vang(n)

winv_s(n),       winv_sline(n,np)
winv_vmag(n),    winv_vang(n)

rand_s(n),       rand_sline(n,np)
rand_vmag(n),    rand_vang(n);

sigma_s(n)=(0.02*sqrt(sqr(p.l(n))+sqr(q.l(n)))+0.1560)/3;
sigma_sline(n,np)=(0.02*sqrt(sqr(pline(n,np))+sqr(qline(n,np)))+0.1560)/3;
sigma_vmag(n)=(0.02*1+0.0057)/3;sigma_vang(n)=(0.2*(pi/180)*3)/3;
*sigma_s(n)=0.02*sqrt(sqr(p.l(n))+sqr(q.l(n)));
*sigma_sline(n,np)=0.02*sqrt(sqr(pline(n,np))+sqr(qline(n,np)));
*sigma_vmag(n)=0.02*1;sigma_vang(n)=0.02*pi/180;

winv_s(n)=(1/sqr(sigma_s(n)))$p.l(n);winv_sline(n,np)=(1/sqr(sigma_sline(n,np)))$pline(n,np);
winv_vmag(n)=(1/sqr(sigma_vmag(n)))$vmag.l(n);winv_vang(n)=(1/sqr(sigma_vang(n)))$vang.l(n);

*execseed = 10E+8*(frac(jnow));
rand_s(n)=normal(0,sigma_s(n));rand_sline(n,np)=normal(0,sigma_sline(n,np));
rand_vmag(n)=normal(0,sigma_vmag(n));rand_vang(n)=normal(0,sigma_vang(n));
variable
e;
vmag.lo(n)$(bus(n,'type') eq 2)=bus('n4','Vmin');
vmag.up(n)$(bus(n,'type') eq 2)=bus('n4','Vmax')+0.1*bus('n4','Vmin');
p.lo(n)$(bus(n,'type') eq 2)=gen(n,'Pmin')/baseMVA;
p.up(n)$(bus(n,'type') eq 2)=gen(n,'Pmax')/baseMVA;
p.lo(n)$(bus(n,'type') eq 1)=-bus(n,'Pd')/baseMVA-0.1*bus(n,'Pd')/baseMVA;
p.up(n)$(bus(n,'type') eq 1)=-bus(n,'Pd')/baseMVA+0.1*bus(n,'Pd')/baseMVA;
q.lo(n)$(bus(n,'type') eq 1)=-bus(n,'Qd')/baseMVA-0.1*bus(n,'Qd')/baseMVA;
q.up(n)$(bus(n,'type') eq 1)=-bus(n,'Qd')/baseMVA+0.1*bus(n,'Qd')/baseMVA;
equation
error;
error..e=e=sum(n,
                 sum(np,winv_sline(n,np)*sqr(sqr(vmag(n))*y(n,np)*cos(-theta(n,np))-vmag(n)*vmag(np)*y(n,np)*cos(-theta(n,np)+vang(n)-vang(np))-pline(n,np)-rand_sline(n,np)))+
                 sum(np,winv_sline(np,n)*sqr(sqr(vmag(np))*y(np,n)*cos(-theta(np,n))-vmag(np)*vmag.l(n)*y(np,n)*cos(-theta(np,n)+vang(np)-vang(n))-pline(np,n)-rand_sline(np,n)))+
                 winv_s(n)*sqr(sum(np,(sqr(vmag(n))*y(n,np)*cos(-theta(n,np))-vmag(n)*vmag(np)*y(n,np)*cos(-theta(n,np)+vang(n)-vang(np)))$line(n,np,'x'))-sum(np,(sqr(vmag(np))*y(np,n)*cos(-theta(np,n))-vmag(np)*vmag(n)*y(np,n)*cos(-theta(np,n)+vang(np)-vang(n)))$line(np,n,'x'))-p.l(n)-rand_s(n))+
                 winv_vang(n)*sqr(vang(n)-vang.l(n)-rand_vang(n))+
                 sum(np,winv_sline(n,np)*sqr(sqr(vmag(n))*y(n,np)*sin(-theta(n,np))-vmag(n)*vmag(np)*y(n,np)*sin(-theta(n,np)+vang(n)-vang(np))-qline(n,np)-rand_sline(n,np)))+
                 sum(np,winv_sline(np,n)*sqr(sqr(vmag(np))*y(np,n)*sin(-theta(np,n))-vmag(np)*vmag(n)*y(np,n)*sin(-theta(np,n)+vang(np)-vang(n))-qline(np,n)-rand_sline(np,n)))+
                 winv_s(n)*sqr(sum(np,(sqr(vmag(n))*y(n,np)*sin(-theta(n,np))-vmag(n)*vmag(np)*y(n,np)*sin(-theta(n,np)+vang(n)-vang(np)))$line(n,np,'x'))-sum(np,(sqr(vmag(np))*y(np,n)*sin(-theta(np,n))-vmag(np)*vmag(n)*y(np,n)*sin(-theta(np,n)+vang(np)-vang(n)))$line(np,n,'x'))-q.l(n)-rand_s(n))+
                 winv_vmag(n)*sqr(vmag(n)-vmag.l(n)-rand_vmag(n))
                 );
model SE /error/;
option nlp = DICOPT;
solve SE using nlp minimizing e;
display vmag.l,vang.l;
*execute_unload vmag,vang
