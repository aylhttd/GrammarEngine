﻿// CD->28.03.2012
// LC->28.03.2012

automat sg
{
 omonym add инфинитив : увязать{}
 omonym add глагол : увязать{}

 // увязать в снегу 
 entry увязать : ИНФИНИТИВ
 {
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:НЕПЕРЕХОДНЫЙ
 }

 // увязать зарплату с продуктивностью
 entry увязать : ИНФИНИТИВ
 {
  ВИД:СОВЕРШ
  ПЕРЕХОДНОСТЬ:ПЕРЕХОДНЫЙ
  ПАДЕЖ:ВИН
 }

 entry увязать : ГЛАГОЛ
 {
  ВИД : СОВЕРШ
  ПЕРЕХОДНОСТЬ:ПЕРЕХОДНЫЙ
  НАКЛОНЕНИЕ:ИЗЪЯВ ВРЕМЯ:БУДУЩЕЕ ЛИЦО:1 ЧИСЛО:ЕД  { [увяжу stress="увяж^у"] }
  НАКЛОНЕНИЕ:ИЗЪЯВ ВРЕМЯ:БУДУЩЕЕ ЛИЦО:1 ЧИСЛО:МН  { [увяжем stress="ув^яжем"] }
  НАКЛОНЕНИЕ:ИЗЪЯВ ВРЕМЯ:БУДУЩЕЕ ЛИЦО:2 ЧИСЛО:ЕД  { [увяжешь stress="ув^яжешь"] }
  НАКЛОНЕНИЕ:ИЗЪЯВ ВРЕМЯ:БУДУЩЕЕ ЛИЦО:2 ЧИСЛО:МН  { [увяжете stress="ув^яжете"] }
  НАКЛОНЕНИЕ:ИЗЪЯВ ВРЕМЯ:БУДУЩЕЕ ЛИЦО:3 ЧИСЛО:ЕД  { [увяжет stress="ув^яжет"] }
  НАКЛОНЕНИЕ:ИЗЪЯВ ВРЕМЯ:БУДУЩЕЕ ЛИЦО:3 ЧИСЛО:МН  { [увяжут stress="ув^яжут"] }
  НАКЛОНЕНИЕ:ИЗЪЯВ ВРЕМЯ:ПРОШЕДШЕЕ ЧИСЛО:ЕД РОД:МУЖ  { [увязал stress="увяз^ал"] }
  НАКЛОНЕНИЕ:ИЗЪЯВ ВРЕМЯ:ПРОШЕДШЕЕ ЧИСЛО:ЕД РОД:ЖЕН  { [увязала stress="увяз^ала"] }
  НАКЛОНЕНИЕ:ИЗЪЯВ ВРЕМЯ:ПРОШЕДШЕЕ ЧИСЛО:ЕД РОД:СР  { [увязало stress="увяз^ало"] }
  НАКЛОНЕНИЕ:ИЗЪЯВ ВРЕМЯ:ПРОШЕДШЕЕ ЧИСЛО:МН  { [увязали stress="увяз^али"] }
  НАКЛОНЕНИЕ:ПОБУД ЛИЦО:2 ЧИСЛО:ЕД  { [увяжи stress="увяж^и"] }
  НАКЛОНЕНИЕ:ПОБУД ЛИЦО:2 ЧИСЛО:МН  { [увяжите stress="увяж^ите"] }
 }


 entry увязать : ГЛАГОЛ
 {
  ВИД : НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:НЕПЕРЕХОДНЫЙ
  НАКЛОНЕНИЕ:ИЗЪЯВ ВРЕМЯ:БУДУЩЕЕ ЛИЦО:1 ЧИСЛО:ЕД  { увязаю }
  НАКЛОНЕНИЕ:ИЗЪЯВ ВРЕМЯ:БУДУЩЕЕ ЛИЦО:1 ЧИСЛО:МН  { увязаем }
  НАКЛОНЕНИЕ:ИЗЪЯВ ВРЕМЯ:БУДУЩЕЕ ЛИЦО:2 ЧИСЛО:ЕД  { увязаешь }
  НАКЛОНЕНИЕ:ИЗЪЯВ ВРЕМЯ:БУДУЩЕЕ ЛИЦО:2 ЧИСЛО:МН  { увязаете }
  НАКЛОНЕНИЕ:ИЗЪЯВ ВРЕМЯ:БУДУЩЕЕ ЛИЦО:3 ЧИСЛО:ЕД  { увязает }
  НАКЛОНЕНИЕ:ИЗЪЯВ ВРЕМЯ:БУДУЩЕЕ ЛИЦО:3 ЧИСЛО:МН  { увязают }
  НАКЛОНЕНИЕ:ИЗЪЯВ ВРЕМЯ:ПРОШЕДШЕЕ ЧИСЛО:ЕД РОД:МУЖ  { увязал }
  НАКЛОНЕНИЕ:ИЗЪЯВ ВРЕМЯ:ПРОШЕДШЕЕ ЧИСЛО:ЕД РОД:ЖЕН  { увязала }
  НАКЛОНЕНИЕ:ИЗЪЯВ ВРЕМЯ:ПРОШЕДШЕЕ ЧИСЛО:ЕД РОД:СР  { увязало }
  НАКЛОНЕНИЕ:ИЗЪЯВ ВРЕМЯ:ПРОШЕДШЕЕ ЧИСЛО:МН  { увязали }
  НАКЛОНЕНИЕ:ПОБУД ЛИЦО:2 ЧИСЛО:ЕД  { увязай }
  НАКЛОНЕНИЕ:ПОБУД ЛИЦО:2 ЧИСЛО:МН  { увязайте }
 }


 link Глагол : увязать { ВИД:НЕСОВЕРШ }   <в_инфинитив> ИНФИНИТИВ : увязать { ВИД:НЕСОВЕРШ }
 link ИНФИНИТИВ : увязать { ВИД:НЕСОВЕРШ } <в_предикат> Глагол : увязать { ВИД:НЕСОВЕРШ }

 link Глагол : увязать { ВИД:СОВЕРШ }  <в_инфинитив> ИНФИНИТИВ : увязать { ВИД:СОВЕРШ }
 link ИНФИНИТИВ : увязать { ВИД:СОВЕРШ } <в_предикат> Глагол : увязать { ВИД:СОВЕРШ } 


 omonym remove Глагол:увязать{}
 omonym remove Инфинитив:увязать{}

}
