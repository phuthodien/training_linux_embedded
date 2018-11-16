<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1542339660418" ID="ID_200195442" MODIFIED="1542342099019" TEXT="B&#xe0;i 2 - File trong Linux">
<node CREATED="1542340309885" ID="ID_689242114" MODIFIED="1542340314863" POSITION="right" TEXT="Ph&#xe2;n lo&#x1ea1;i t&#x1ec7;p tin">
<node CREATED="1542340316283" ID="ID_1416324015" MODIFIED="1542340326304" TEXT="Regular file">
<node CREATED="1542340350677" ID="ID_841176051" MODIFIED="1542340372665" TEXT="L&#xe0; c&#xe1;i file ch&#x1ee9;a d&#x1eef; li&#x1ec7;u v&#xe0; t&#x1ed3;n t&#x1ea1;i th&#x1ef1;c t&#x1ebf; trong &#x1ed5; c&#x1ee9;ng"/>
<node CREATED="1542340377189" ID="ID_1588341730" MODIFIED="1542340391279" TEXT="Kh&#xf4;ng b&#x1ecb; m&#x1ea5;t &#x111;i khi kh&#x1edf;i &#x111;&#x1ed9;ng l&#x1ea1;i h&#x1ec7; th&#x1ed1;ng"/>
<node CREATED="1542341245526" ID="ID_999579786" MODIFIED="1542341272673" TEXT="M&#x1ed7;i lo&#x1ea1;i file s&#x1ebd; c&#xf3; format d&#x1eef; li&#x1ec7;u ri&#xea;ng"/>
</node>
<node CREATED="1542341296765" ID="ID_503948585" MODIFIED="1542341303377" TEXT="Directory">
<node CREATED="1542341306332" ID="ID_1312068635" MODIFIED="1542341320633" TEXT="L&#xe0; file n&#x1eb1;m tr&#xea;n &#x1ed5; c&#x1ee9;ng."/>
<node CREATED="1542341321293" ID="ID_703627908" MODIFIED="1542341354370" TEXT="D&#x1eef; li&#x1ec7;u trong th&#x1b0; m&#x1ee5;c l&#xe0; t&#xea;n l&#xe0; m&#x1ed9;t s&#x1ed1; th&#xf4;ng tin c&#x1ee7;a c&#xe1;c file n&#x1eb1;m trong n&#xf3;."/>
<node CREATED="1542341361116" ID="ID_1193677458" MODIFIED="1542341366586" TEXT="Kh&#xf4;ng c&#xf3; format ri&#xea;ng"/>
</node>
<node CREATED="1542341389013" ID="ID_1000874897" MODIFIED="1542341394257" TEXT="C&#xe1;c lo&#x1ea1;i file kh&#xe1;c">
<node CREATED="1542341395364" ID="ID_1113689843" MODIFIED="1542341400617" TEXT="Meta data"/>
<node CREATED="1542341400989" ID="ID_1743889245" MODIFIED="1542341409025" TEXT="Symbolic link"/>
<node CREATED="1542341409517" ID="ID_929614635" MODIFIED="1542341413273" TEXT="virtual file">
<node CREATED="1542341546901" ID="ID_1354485657" MODIFIED="1542341556065" TEXT="Socket"/>
<node CREATED="1542341556572" ID="ID_80532818" MODIFIED="1542341559249" TEXT="Device file"/>
<node CREATED="1542341559924" ID="ID_451767776" MODIFIED="1542341635145" TEXT="STDIN, STDOUT, STDERR"/>
</node>
</node>
</node>
<node CREATED="1542341660588" ID="ID_450792459" MODIFIED="1542341674601" POSITION="right" TEXT="File descriptor">
<node CREATED="1542341778726" ID="ID_811763266" MODIFIED="1542341784897" TEXT="L&#xe0; m&#x1ed9;t s&#x1ed1; nguy&#xea;n kh&#xf4;ng &#xe2;m"/>
<node CREATED="1542341785396" ID="ID_1832500777" MODIFIED="1542341809809" TEXT="&#x110;&#x1ea1;i di&#x1ec7;n cho index ch&#x1ee9;a con tr&#x1ecf; file trong file table c&#x1ee7;a process"/>
<node CREATED="1542341810340" ID="ID_1336188907" MODIFIED="1542341844369" TEXT="Index 0 cho STDIN, 1 - STDOUT, 2 - STDERR"/>
<node CREATED="1542341846748" ID="ID_1863717217" MODIFIED="1542341873713" TEXT="To&#xe1;n t&#x1eed; &quot;&gt;&quot;?"/>
</node>
<node CREATED="1542342525628" ID="ID_383361184" MODIFIED="1542351741591" POSITION="right" TEXT="C&#xe1;ch s&#x1eed; d&#x1ee5;ng c&#xe1;c h&#xe0;m c&#x1a1; b&#x1ea3;n t&#x1b0;&#x1a1;ng t&#xe1;c v&#x1edb;i file">
<node CREATED="1542342665644" ID="ID_1908429929" MODIFIED="1542342746012" TEXT="open"/>
<node CREATED="1542342691220" ID="ID_1318701005" MODIFIED="1542342748968" TEXT="close"/>
<node CREATED="1542342699980" ID="ID_269515073" MODIFIED="1542342702977" TEXT="lseek"/>
<node CREATED="1542342737156" ID="ID_1533667166" MODIFIED="1542342743917" TEXT="read"/>
<node CREATED="1542342750628" ID="ID_1975842351" MODIFIED="1542342755985" TEXT="write"/>
<node CREATED="1542349270159" ID="ID_1823913325" MODIFIED="1542349275339" TEXT="sync"/>
<node CREATED="1542342788124" ID="ID_353143647" MODIFIED="1542348870146" TEXT="B&#xe0;i t&#x1ead;p">
<node CREATED="1542342914636" ID="ID_1052052463" MODIFIED="1542349223788" TEXT="T&#x1ef1; t&#x1ea1;o 1 file text v&#xe0; &#x111;&#x1ecd;c n&#xf3; t&#x1eeb; 1 v&#x1ecb; tr&#xed; b&#x1ea5;t k&#x1ef3;, t&#x1ea5;t c&#x1ea3; &#x111;&#x1ec1;u s&#x1eed; d&#x1ee5;ng C."/>
<node CREATED="1542342916628" ID="ID_255618941" MODIFIED="1542343025873" TEXT="S&#x1eed; d&#x1ee5;ng h&#xe0;m readdir &#x111;&#x1ec3; in ra th&#xf4;ng tin c&#xe1;c file trong 1 folder v&#x1edb;i &#x111;&#x1b0;&#x1edd;ng d&#x1eab;n fixed trong source code. Th&#xf4;ng tin g&#x1ed3;m c&#xf3; t&#xea;n, size, modify time."/>
<node CREATED="1542348874007" ID="ID_311488613" MODIFIED="1542348911827" TEXT="Build 1 kernel module c&#xf3; s&#x1eb5;n h&#xe0;m read/write sau &#x111;&#xf3; vi&#x1ebf;t 1 ch&#x1b0;&#x1a1;ng tr&#xec;nh C &#x111;&#x1ec3; &#x111;&#x1ecd;c file v&#xe0; xem k&#x1ebf;t qu&#x1ea3;"/>
<node CREATED="1542349336302" ID="ID_418750528" MODIFIED="1542351796055" TEXT="D&#xf9;ng C &#x111;&#x1ec3; t&#x1ea1;o ra 1 folder c&#xf3; c&#x1ea5;u tr&#xfa;c nh&#x1b0; h&#xec;nh v&#x1ebd;, trong &#x111;&#xf3; c&#xe1;c file c&#xf3; c&#xe1;c mode kh&#xe1;c nhau. Hi&#x1ec7;n th&#x1ecb; nh&#x1eef;ng file c&#xf3; mode l&#xe0; read only."/>
<node CREATED="1542349470694" ID="ID_1086947759" MODIFIED="1542349537475" TEXT="T&#x1ea3;i 1 g&#xf3;i software packet v&#x1ec1; m&#xe1;y, sau &#x111;&#xf3; vi&#x1ebf;t ch&#x1b0;&#x1a1;ng tr&#xec;nh setup &#x111;&#x1ec3; c&#xe0;i &#x111;&#x1eb7;t packet &#x111;&#xf3; l&#xea;n m&#xe1;y t&#xed;nh, vi&#x1ebf;t 1 ch&#x1b0;&#x1a1;ng tr&#xec;nh uninstall &#x111;&#x1ec3; g&#x1ee1; g&#xf3;i packet &#x111;&#xf3; &#x111;i.">
<node CREATED="1542351715396" ID="ID_138711411" MODIFIED="1542351717090" TEXT="https://drive.google.com/open?id=121QwiGUTnRdk18NoEoSDUAODxmDu5B9t"/>
</node>
</node>
</node>
<node CREATED="1542342100637" ID="ID_327716636" MODIFIED="1542342105656" POSITION="left" TEXT="Ph&#xe2;n lo&#x1ea1;i t&#x1ec7;p tin">
<node CREATED="1542342110164" ID="ID_1271160575" MODIFIED="1542342126737" TEXT="Cat th&#x1eed; file binary cho m&#x1ecd;i ng&#x1b0;&#x1edd;i xem"/>
<node CREATED="1542342161237" ID="ID_683927896" MODIFIED="1542342173665" TEXT="Cat th&#x1eed; directory cho m&#x1ecd;i ng&#x1b0;&#x1edd;i xem"/>
<node CREATED="1542342202756" ID="ID_650396736" MODIFIED="1542342227473" TEXT="&#x110;&#xed;nh ch&#xed;nh l&#x1ea1;i STDOUT l&#xe0; ra m&#xe0;n h&#xec;nh"/>
</node>
<node CREATED="1542342344029" ID="ID_1511015604" MODIFIED="1542342353153" POSITION="left" TEXT="File descriptor">
<node CREATED="1542342355107" ID="ID_158585212" MODIFIED="1542342363433" TEXT="V&#x1ebd; l&#x1ea1;i cho m&#x1ecd;i ng&#x1b0;&#x1edd;i nh&#xec;n v&#x1ec1; file table"/>
<node CREATED="1542342366084" ID="ID_84594888" MODIFIED="1542342389377" TEXT="Gi&#x1ea3;i th&#xed;ch v&#x1ec1; file descriptor &#x1edf; t&#x1ea7;ng user-mode v&#xe0; kernel mode"/>
<node CREATED="1542342455229" ID="ID_1879319464" MODIFIED="1542342466801" TEXT="Gi&#x1ea3;i th&#xed;ch v&#x1ec1; to&#xe1;n t&#x1eed; &gt; trong command line"/>
<node CREATED="1542342579876" ID="ID_612984704" MODIFIED="1542342606617" TEXT="Code th&#x1eed; 1 ch&#x1b0;&#x1a1;ng tr&#xec;nh hi&#x1ec3;n th&#x1ecb; danh s&#xe1;ch file trong 1 folder. &#x110;&#x1b0;&#x1edd;ng d&#x1eab;n folder &#x111;&#x1b0;&#x1ee3;c fixed trong source code"/>
</node>
<node CREATED="1542351736147" ID="ID_339261372" MODIFIED="1542351747119" POSITION="left" TEXT="C&#xe1;ch s&#x1eed; d&#x1ee5;ng c&#xe1;c h&#xe0;m c&#x1a1; b&#x1ea3;n t&#x1b0;&#x1a1;ng t&#xe1;c v&#x1edb;i file">
<node CREATED="1542351748138" ID="ID_517377426" MODIFIED="1542351762031" TEXT="Ch&#x1ec9; gi&#x1edb;i thi&#x1ec7;u 1 s&#x1ed1; h&#xe0;m c&#x1a1; b&#x1ea3;n"/>
<node CREATED="1542342788124" ID="ID_528516060" MODIFIED="1542348870146" TEXT="B&#xe0;i t&#x1ead;p">
<node CREATED="1542342914636" ID="ID_1783490" MODIFIED="1542349223788" TEXT="T&#x1ef1; t&#x1ea1;o 1 file text v&#xe0; &#x111;&#x1ecd;c n&#xf3; t&#x1eeb; 1 v&#x1ecb; tr&#xed; b&#x1ea5;t k&#x1ef3;, t&#x1ea5;t c&#x1ea3; &#x111;&#x1ec1;u s&#x1eed; d&#x1ee5;ng C."/>
<node CREATED="1542342916628" ID="ID_1421020530" MODIFIED="1542343025873" TEXT="S&#x1eed; d&#x1ee5;ng h&#xe0;m readdir &#x111;&#x1ec3; in ra th&#xf4;ng tin c&#xe1;c file trong 1 folder v&#x1edb;i &#x111;&#x1b0;&#x1edd;ng d&#x1eab;n fixed trong source code. Th&#xf4;ng tin g&#x1ed3;m c&#xf3; t&#xea;n, size, modify time."/>
<node CREATED="1542348874007" ID="ID_1295278281" MODIFIED="1542348911827" TEXT="Build 1 kernel module c&#xf3; s&#x1eb5;n h&#xe0;m read/write sau &#x111;&#xf3; vi&#x1ebf;t 1 ch&#x1b0;&#x1a1;ng tr&#xec;nh C &#x111;&#x1ec3; &#x111;&#x1ecd;c file v&#xe0; xem k&#x1ebf;t qu&#x1ea3;"/>
<node CREATED="1542349336302" ID="ID_165302034" MODIFIED="1542351796055" TEXT="D&#xf9;ng C &#x111;&#x1ec3; t&#x1ea1;o ra 1 folder c&#xf3; c&#x1ea5;u tr&#xfa;c nh&#x1b0; h&#xec;nh v&#x1ebd;, trong &#x111;&#xf3; c&#xe1;c file c&#xf3; c&#xe1;c mode kh&#xe1;c nhau. Hi&#x1ec7;n th&#x1ecb; nh&#x1eef;ng file c&#xf3; mode l&#xe0; read only."/>
<node CREATED="1542349470694" ID="ID_309467512" MODIFIED="1542349537475" TEXT="T&#x1ea3;i 1 g&#xf3;i software packet v&#x1ec1; m&#xe1;y, sau &#x111;&#xf3; vi&#x1ebf;t ch&#x1b0;&#x1a1;ng tr&#xec;nh setup &#x111;&#x1ec3; c&#xe0;i &#x111;&#x1eb7;t packet &#x111;&#xf3; l&#xea;n m&#xe1;y t&#xed;nh, vi&#x1ebf;t 1 ch&#x1b0;&#x1a1;ng tr&#xec;nh uninstall &#x111;&#x1ec3; g&#x1ee1; g&#xf3;i packet &#x111;&#xf3; &#x111;i.">
<node CREATED="1542351715396" ID="ID_1340204117" MODIFIED="1542351717090" TEXT="https://drive.google.com/open?id=121QwiGUTnRdk18NoEoSDUAODxmDu5B9t"/>
</node>
</node>
</node>
</node>
</map>
