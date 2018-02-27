﻿// CD->09.04.2010
// LC->05.03.2011


 #define adv2v( Adv, V, Aspect=NULL ) \
  #begin
   extern entry V:ИНФИНИТИВ
   extern entry V:ГЛАГОЛ
   extern entry Adv:Наречие
   
   
   #if Aspect==NULL
    #begin
     link ИНФИНИТИВ:V{} <в_наречие> Наречие:Adv{}
     link Наречие:Adv{} <в_предикат> ИНФИНИТИВ:V{}
     link ГЛАГОЛ:V{} <в_наречие> Наречие:Adv{}
     link Наречие:Adv{} <в_предикат> ГЛАГОЛ:V{}
	#end   
   #else
    #begin
     link ИНФИНИТИВ:V{ Вид:Aspect } <в_наречие> Наречие:Adv{}
     link Наречие:Adv{} <в_предикат> ИНФИНИТИВ:V{ Вид:Aspect }
     link ГЛАГОЛ:V{ Вид:Aspect } <в_наречие> Наречие:Adv{}
     link Наречие:Adv{} <в_предикат> ГЛАГОЛ:V{ Вид:Aspect }
	#end  
   #endif   
   
   
  #end

automat sg
{
 adv2v( заискивающе, заискивать )
 adv2v( понимающе, понимать )
 adv2v( потрясающе, потрясать )
 adv2v( угрожающе, угрожать )
 adv2v( устрашающе, устрашать )
 adv2v( умоляюще, умолять )
 adv2v( торжествующе, торжествовать )
 adv2v( бодряще, бодрить )
 adv2v( волнующе, волновать )
 adv2v( впечатляюще, впечатлять )
 adv2v( выжидающе, выжидать )
 adv2v( гипнотизирующе, гипнотизировать )
 adv2v( дразняще, дразнить )
 adv2v( дурманяще, дурманить )
 adv2v( заигрывающе, заигрывать )
 adv2v( запоминающе, запоминать )
 adv2v( захватывающе, захватывать )
 adv2v( звеняще, звенеть )
 adv2v( извиняюще, извинять )
 adv2v( изнуряюще, изнурять )
 adv2v( изучающе, изучать )
 adv2v( интригующе, интриговать )
 adv2v( испытующе, испытывать )
 adv2v( исцеляюще, исцелять )
 adv2v( исчерпывающе, исчерпывать )
 adv2v( кричаще, кричать )
 adv2v( лающе, лаять )
 adv2v( леденяще, леденить )
 adv2v( ликующе, ликовать )
 adv2v( любяще, любить )
 adv2v( маняще, манить )
 adv2v( негодующе, негодовать )
 adv2v( недоумевающе, недоумевать )
 adv2v( облагораживающе, облагораживать )
 adv2v( облегчающе, облегчать )
 adv2v( обнадеживающе, обнадеживать )
 adv2v( ободряюще, ободрять )
 adv2v( оглушающе, оглушать )
 adv2v( одуряюще, одурять )
 adv2v( ожидающе, ожидать )
 adv2v( опьяняюще, опьянять )
 adv2v( освежающе, освежать )
 adv2v( ослепляюще, ослеплять )
 adv2v( осуждающе, осуждать )
 adv2v( отрезвляюще, отрезвлять )
 adv2v( отталкивающе, отталкивать )
 adv2v( оценивающе, оценивать )
 adv2v( ошеломляюще, ошеломлять )
 adv2v( подавляюще, подавлять )
 adv2v( подбадривающе, подбадривать )
 adv2v( подзадоривающе, подзадоривать )
 adv2v( подходяще, подходить )
 adv2v( поражающе, поражать )
 adv2v( порицающе, порицать )
 adv2v( поучающе, поучать )
 adv2v( предостерегающе, предостерегать )
 adv2v( предупреждающе, предупреждать )
 adv2v( примиряюще, примирять )
 adv2v( пронизывающе, пронизывать )
 adv2v( просяще, просить )
 adv2v( протестующе, протестовать )
 adv2v( прощающе, прощать )
 adv2v( пугающе, пугать )
 adv2v( пьяняще, пьянить )
 adv2v( развращающе, развращать )
 adv2v( раздирающе, раздирать )
 adv2v( раздражающе, раздражать )
 adv2v( разоряюще, разорять )
 adv2v( расслабляюще, расслаблять )
 adv2v( рыдающе, рыдать )
 adv2v( сверкающе, сверкать )
 adv2v( скучающе, скучать )
 adv2v( соболезнующе, соболезновать )
 adv2v( сожалеюще, сожалеть )
 adv2v( стонуще, стонать )
 adv2v( страдающе, страдать )
 adv2v( тоскующе, тосковать )
 adv2v( тревожаще, тревожить )
 adv2v( убаюкивающе, убаюкивать )
 adv2v( угнетающе, угнетать )
 adv2v( удушающе, удушать )
 adv2v( ужасающе, ужасать )
 adv2v( умиротворяюще, умиротворять )
 adv2v( уничтожающе, уничтожать )
 adv2v( успокаивающе, успокаивать )
 adv2v( усыпляюще, усыплять )
 adv2v( цветуще, цвести )
 adv2v( чарующе, чаровать )
 adv2v( разлагающе, разлагать )
 adv2v( гавкающе, гавкать )
 adv2v( завлекающе, завлекать )
 adv2v( изматывающе, изматывать )
 adv2v( плачуще, плакать )
 adv2v( приглашающе, приглашать )
 adv2v( слепяще, слепить, НЕСОВЕРШ )
 adv2v( жалеючи, жалеть )
 
/*
 adv2v( ,  )
 adv2v( ,  )
 adv2v( ,  )
 adv2v( ,  )
 adv2v( ,  )
 adv2v( ,  )
 adv2v( ,  )
 adv2v( ,  )
 adv2v( ,  )
 adv2v( ,  )
 adv2v( ,  )
 adv2v( ,  )
 adv2v( ,  )
 adv2v( ,  )
 adv2v( ,  )
 adv2v( ,  )
 adv2v( ,  )
*/ 
}