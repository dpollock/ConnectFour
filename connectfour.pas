Program SciFairProject;
Uses Graph, Rwbgf, mouse, crt;
Type Rowrange = 1..6;
Col range = 1..8;
Board= 1..2;
AllBoard = Array[Rowrange, Colrange, Board] of Integer;
CompDecide = Array[1..8,1..21of Integer;
Val- empty, Ebox, Bbox, Rbox, Bchip, But But2, but3, but4: Pointer;
size8, size7, Size, Size 1, Size2, Size3, Size4, size5, size6 : Word;
Computerchoice, Computerpick, ValueRow, ValueCol, Numchip, ptum, choice, j,
w,q, i„ humanchiprow, b, strat, x,y : integer;
hinum, hinurn2, ta, u, t, cols:, rows, chiprow, chipcol : integer;
computerturn. gameover, columnfiill, lb,rb boolean;
Values : AllBoard;
va, s : sting;
CompCol : Comp Decide;
Procedure aearMern;

Begin
FreeMern(Ebox, Size); FreeMem(Bbox, Size1) FreeMem(Rbox,Size2); FreeMem(Bchip,Size3); FreeMem(Butl,Size.5); FreeMern(But3,Size6); FreeMem(But4,Size7),
end;

Procedure win;
Var Endloop : boolean;
Begin
If computerturn = true then
begin
Setcolor(15)
Outtextxy(255,420,'YOU WIN ! !');
settextjustify(centertext,centertext);
while not endloop do
Begin
mouseinfo(x,y,lb,rb);
true then endloop = true;
end;
end;
If cornputertum = false then
begin
Setcolor(15 5);
settexOusify(centenext,centertext);
Outtextxy(255,420, 'YOU LOSET); while not endloop do Begin
mouseinfo(x,y,lb,rb);
if 11)-- true then endloop := true;
end;
end;
delay(3000);
end;		
		•
		

Procedure ClearlmpossibleMoves;
Var choice, cols, rows :integer;
Begin
For choice := 1 to 2 do
Begin
for cols 1 to 8 do
cornpcolfrals,thoice] := 0;
for cols := 1 to 8 do
for rows := 2 to 6 do
if Valuesirows,,cols,choicej < 7 then
if Valuesfrows-1,cols,choicej < 7 then
Valuesfrows,cols,choice] 0;
End;
for choice := I to 2 do
for cols I to 8 do
for rows = I to 6 do
if values[rows, cols, choice] > compcolfrols,choice] then
begin
if valuesfrows„cols,ehoicei < 8 then Compcolicols„choicel .---
valuestrows,cols,choicel;
if (rows = 6) and (valuestrows,cols,choice),73 then Cornp..-olfccas,chcticel .-= -
end;
end;

Procedure Checklip;
Var Valuesl, Values2, Values3„ Values4 Integer; Begin
choice := 0;
for ptum 8 to 9 Do
Begin
Numchip 0;
choice := choice + I;
If valuesichiprow,,chipcol,choicel <> ptum then
Begin
Values1 := valuesfchiprow,chipcol,choice1;
Values2 := values[chiprow+1,chipcol,choicei;
Values3 := values[chiprow+2,chipcot,choice];
NiTalu.es4 := values[chiprow+3,chipcol,choicej;
If values' > then Numchip := Leh .p+ 1;
If (values2 > 7) and (Values2 <> ptum) then Numchip := Numchip
(values3 > 7) and (Values3 <> pturn) then Numchip := Numchip
If (values4 > ) and (Yalues4 <> pturn) to Numchip := Numc.hip
If (values2 = ptum) or (values3 = ptum) or (values4 = ptum) then Nurnchip := 0;
If (values1 < 8) and (Values1 < Numchip) then valuesichiprow,chipcol,choicej :=
Numchip;
If (values2 < 8) and (Values2 < Numchip) then values[chiprow+1,chipcol,choice]
Numchip;
If (values3 < 8) and (Values3 < Nurnchip) then values[chiprow+2,chipcol,choicei := Numchip;
if (values4 < 8) and (Values4 < Numchip) then va1ues[chiprow+3,chipcol,choicel
:= umchip;
End;
If Numehip = 4 then Gameover := True;
End;
End;
Procedure CheckUpright;
gar Valuesl, Values2, Valu.es3, Values4 : Integer;
Begin
choice := 0;
for ptum := 8 to 9 Do
Begin
Numchip 0;
choice := choice + 1;
If values[chiprow,chipcol,choice] <> ptum then
begin
Values1 := values[chiprow,chipcot,choicel;
Values2 := valuestchiprow+ 1,chipcol+ I choice];
Values3 := values[chiprow+2,chipcol+2,choice j;
Values4 := values [chiprow+3,chipcol+3,choice];
If values1 > 7 then Numchip := Numchip I;
If (values2 > '7) and (Values2 <> ptum) thenNumchip := Nurnchip ;
If (values3 > and (Values3 <> pturn) then Nurnchip iNurnchip + 1;
If (values4 > 7) and (Values4 <> pturn) then Nurnchip Nurnchip
If (values2 = ptum) or (values3 ptum) or (vatues4 pturn) then Numcbip := 0;
If (values! < 8) and (Values1 < Numehip) then valuesichiprow,chipcol,choicej
Numchip;
If (values2 < 8) and (Values2 < Numchip) then
values[chiprow+ I ,chipcol+ I „choice] Numchiv,
if (values3 < 8) and (Values3 < Numchip) then
va1uesichiprow+2,chipco1+2,choicei Numchip;
If (values4 < 8) and (Values4 < Numchip) then
valuestchiprow4-3,chipcol+3,choicej := Nurnchip;
End;
If Numchip = 4 then (iameover := True;
End;
End;
Procedure CheckDownRight;
Var Values 1, Values2, Values3, Values4 : Integer;
Begin
choice 0;
for pturn := 8 to 9 Do
Begin
Numchip := 0;
choice := 1;
If values[chiprow,chipcol„choicel <> ptum then
begin
Values1 := values[chiprow,chipcol,choicej;
Values2 := values [chiprow- I ,chipcol± 1,choicel;
Values3 := values[chiprow-2,chipcol÷2,choice];
Values4 := values[chiprow-3,chipco1+3„choicei;
If values1 > 7 then Numchip := Numehip I ;
If (values2 > 7) and (Values2 <> pturn) then Nurnchip := Numchip ± I;
If (values3 > 7) and (Values3 <> pturn) then Numchip := Numchip 1;
If (values4 > 7) and (Values4 <> ptum) then Nurnchip Numchip ± 1;
If (values2 = pturn) or (values3 = pturn) or (values4 = pturn) then Numchip := 0;
If (values1 < 8) and (Values1 < Numchip) then values[chiprow,chipcol,choice] :=
Numchip;
If (values2 < 8) and (Values2 < Nurnchip) then values[chiprow-
1„chipcol+1,choice1 := Numehip;
If (values3 < 8) and (Values3 < Numchip) then values[chiprow-
2,chipcol+2,choice] := Numchip;
If (values4 < 8) and (Values4 < Nurnehip) then values[chiprow-
3,chipcol+3,choicel Numchip;
End;
End; End;
Procedure Compoffensive; var endloop : boolean;
Begin
endloop := false;
Hinum := 0;
For cols :— I to 8 Do
If compeol[cols,2] > HiNum then Hinum := compcol[cols,2];
While Not Endloop do
begin
Computerchoice := Random(9);
If computerchoice = 0 then computerchoice := I.;
compcolicornputerchoice,21 = hin.um then
endloop := True;
end;
end;
Procedure Compdefensive;
var endloop : boolean;
Begin
endloop := false;
Hinurn2 := 0;
For cols 1 to 8 Do
If compcol[cois,1 j> HiNum2 then	um.2 := compcol[cols,1];
While Not Endloop do
be&
Computerchoice := Random(9);
If computerchoice = o then computerchoice := I.
If compco computerc oice,1 ]= hinum2 then
endloop := True;
end;
end;
Procedure Compcombo; vat endloop : boolean;
Begin
endloop =false;
For cols I to 8 do
begin
If compcolicols,21 = 3 then
begin
endloop := true;
computerchoice := cols;
end;
end;
while not endloop do
begin
Compoffensive;
compdefensive;
if hinum s;,= hinum2 then compoffensive;
if hinum < hinum2 then compdefensive;
endloop := true;
end;
end;
procedure Comprandom;
Begin
Randomize;
Computerchoice := random(9);
If Computerchoice 0 then Coznputerchoice := I;
end;
Procedure SetBoardZero;
%far Rows, Cols : integer;
Begin
For Rows I to 6 Do
For Cols I. to 8 Do
Begin
Values[Rows, Cols, 1] 0;
Values[Rows, cols, 2].= 0;
End;
End;
Procedure Design;
Begin
setcolor(7); setfillstyle(1,7); setfillstyle(1,7); bar(639,479,0,0); setcolor(0); setcoloray, setcolor(15); setcolor(8).„ 110639,0,639,479); line(639,479,638,0); setfiiistyle(1,8); bar(642,-4,633,478);
setfillstyle(1,8); bar(642,481,3,475); setfilistyle(1,8);
setcolor0	setillstyle(1,15); bar(635,0,0,6);
setfillstyle(1,15); bar(-12„-15,5,478); setcolor(8);
putpixel(5,478,8); puipixe1(5,477,8); putpixel(5,476,8);
putpixel(4,477,8); putpixe1(4,478,8); putpixe1(3„478,8);
putpix42,479,8); putpixel(1,479,8); putpixel.(635,6,8);
putpixel(634,6,8); putpixel(633,6,8); putpixel(634,5,8);
putpixel(635,5,8); putpixel(635A8); setcolor(15):,
putpixel(636,1,15); putpixel(636,2,15); putpixel(637,2,15); putpixel(637,1,15);
putpixe1(38„1,15); setcolor(8), putpixeR 637,2,8); putpixel(638,1,8);
setcolor(0); setfillstyle(1,0); bat-( I6,17,504,465);
setcolor(151); rectangle(1 5,16,505,466); rectangle(5 I 7,16,621,466);
setcolor(8)- Line(505,18 505 466). line(505 466,16 466)-
,	.	5
line(620,16,517,16); 1ine(517,16,517,466); End;
Procedure DropChip.,
Var spotx, spoty, g,f. Rows integer; endloop : boolean;
Begin
rows
endloop:—
(x)luninfuri - false,
White not endloov do	
Begin
If rows = 7 then
Begin
endloop
columnfull := true;
Setcolor(12);
settexOustify(centertext, centertext);
Outtextxy(255,420,7hat Column Is Full,
setcolor(0);
delay( .000);
Ouftexbw(255,420,That Column Is Full,
settextjustir(lefttext, centertext).
End;
If values{rows, humanchiprow, I I < 7 then
Begin
spotx := humanchiprow;
spoty rows;
endloop true;
values[rows, hurnanchiprow, I :---- 9;
values[rows, humanchiprow,21 := 9;
delay(100);
Computertum true;
end-,
If values[rows, humanchiprow, 11 > then begin
rows := rows + 1;
end;
Case spoty of g 350., 2:g := 300; 3 :g:=250., 4:g1= 200;
Olr
6:g:=100., End;
Case spotx of I f :------ 55;
	2 :	105;
3.f:= 155.,
	:	205., 
51f 255;
6305;
: f 355;
Please Pick Mother.);
Please Pick Another.);
