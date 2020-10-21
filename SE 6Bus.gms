sets
n index of buses /n1*n6/
alias(n,np);
scalar
baseMVA /100/;
table bus(n,*) bus data
          type     Pd       Qd       Gs       Bs       area     Vm       Va       baseKV     zone     Vmax       Vmin
n1        3        0        0        0        0        1        1.05     0        230        1        1.05        1.05
n2        2        0        0        0        0        1        1.05     0        230        1        1.05        1.05
n3        2        0        0        0        0        1        1.07     0        230        1        1.07        1.07
n4        1        70       70       0        0        1        1        0        230        1        1.05        0.95
n5        1        70       70       0        0        1        1        0        230        1        1.05        0.95
n6        1        70       70       0        0        1        1        0        230        1        1.05        0.95;
table gen(n,*) generator data
          Pg       Qg       Qmax       Qmin        Vg       mBase      status   Pmax       Pmin      Pc1      Pc2      Qc1min   Qc1max   Qc2min   Qc2max   ramp_agc ramp_10  ramp_30  ramp_q   apf
n1        0        0        100        -100        1.05     100        1        200        50        0        0        0        0        0        0        0        0        0        0        0
n2        50       0        100        -100        1.05     100        1        150        37.5      0        0        0        0        0        0        0        0        0        0        0
n3        60       0        100        -100        1.07     100        1        180        45        0        0        0        0        0        0        0        0        0        0        0;
table line(n,n,*) branch data
            r        x             b           rateA     rateB     rateC     ratio    angle    status   angmin      angmax
n1.n2       0.1      0.2           0.04        40        40        40        0        0        1        -360        360
n1.n4       0.05     0.2           0.04        60        60        60        0        0        1        -360        360
n1.n5       0.08     0.3           0.06        40        40        40        0        0        1        -360        360
n2.n3       0.05     0.25          0.06        40        40        40        0        0        1        -360        360
n2.n4       0.05     0.1           0.02        60        60        60        0        0        1        -360        360
n2.n5       0.1      0.3           0.04        30        30        30        0        0        1        -360        360
n2.n6       0.07     0.2           0.05        90        90        90        0        0        1        -360        360
n3.n5       0.12     0.26          0.05        70        70        70        0        0        1        -360        360
n3.n6       0.02     0.1           0.02        80        80        80        0        0        1        -360        360
n4.n5       0.2      0.4           0.08        20        20        20        0        0        1        -360        360
n5.n6       0.1      0.3           0.06        40        40        40        0        0        1        -360        360;

parameter
y(n,np);
*theta(n,np)

y(n,np)$line(n,np,'x')=sqrt(sqr(line(n,np,'r'))/sqr(sqr(line(n,np,'r'))+sqr(line(n,np,'x')))+sqr((line(n,np,'b')$(ord(n) eq ord(np))/2)-(line(n,np,'x')/(sqr(line(n,np,'r'))+sqr(line(n,np,'x'))))));
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
        n1          n2         n3        n4          n5         n6
n1      -1.2421     -1.107     0         -1.326      -1.310     0
n2      -1.107      -1.1884    -1.373    -1.107      -1.249     -1.234
n3      0           -1.373     -1.3250   0           -1.138     -1.373
n4      -1.326      -1.107     0         -1.1715     -1.107     0
n5      -1.310      -1.249     -1.138    -1.107      -1.2125    -1.249
n6      0           -1.234     -1.373    0           -1.249     -1.3131;

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
p.fx(n)$(bus(n,'type') eq 2)=gen(n,'Pg')/baseMVA;
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
activepower(n)..p(n)-(bus(n,'Pd')$(bus(n,'type') ne 1)/baseMVA)=e=sum(np,(sqr(vmag(n))*y(n,np)*cos(-theta(n,np))-vmag(n)*vmag(np)*y(n,np)*cos(-theta(n,np)+vang(n)-vang(np)))$line(n,np,'x'))-sum(np,(sqr(vmag(np))*y(np,n)*cos(-theta(np,n))-vmag(np)*vmag(n)*y(np,n)*cos(-theta(np,n)+vang(np)-vang(n)))$line(np,n,'x'));
reactivepower(n)..q(n)-(bus(n,'Qd')$(bus(n,'type') ne 1)/baseMVA)=e=sum(np,(sqr(vmag(n))*y(n,np)*sin(-theta(n,np))-vmag(n)*vmag(np)*y(n,np)*sin(-theta(n,np)+vang(n)-vang(np)))$line(n,np,'x'))-sum(np,(sqr(vmag(np))*y(np,n)*sin(-theta(np,n))-vmag(np)*vmag(n)*y(np,n)*sin(-theta(np,n)+vang(np)-vang(n)))$line(np,n,'x'));

model PF /all/;
option cns = KNITRO;
solve PF using cns;
*  nlp minimizing z;mcp
display y,theta,p.l,q.l,vmag.l,vang.l;
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