<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1543547083517" ID="ID_1775257789" MODIFIED="1543550415059" TEXT="Qu&#x1ea3;n l&#xfd; process">
<node CREATED="1543550329575" ID="ID_1523956401" MODIFIED="1543550332132" POSITION="right" TEXT="Agenda">
<node CREATED="1543563210490" ID="ID_1158007868" MODIFIED="1543563211157" TEXT="Process identifier"/>
<node CREATED="1543563215377" ID="ID_1824928039" MODIFIED="1543563215703" TEXT="Process &#x111;&#x1b0;&#x1ee3;c sinh ra v&#xe0; k&#x1ebf;t th&#xfa;c nh&#x1b0; th&#x1ebf; n&#xe0;o"/>
<node CREATED="1543563235345" ID="ID_1335967195" MODIFIED="1543563236350" TEXT="Thay &#x111;&#x1ed5;i user id v&#xe0;o group id"/>
<node CREATED="1543563244049" ID="ID_1235653740" MODIFIED="1543563244518" TEXT="C&#xe1;c file th&#xf4;ng d&#x1ecb;ch"/>
<node CREATED="1543563254769" ID="ID_1549224223" MODIFIED="1543563265358" TEXT="Run command line trong C"/>
<node CREATED="1543563285810" ID="ID_421567374" MODIFIED="1543563286141" TEXT="Tracking tr&#x1ea1;ng th&#xe1;i k&#x1ebf;t th&#xfa;c c&#x1ee7;a process"/>
</node>
<node CREATED="1543550336854" ID="ID_1456519838" MODIFIED="1543550454570" POSITION="right" TEXT="Process identifier">
<node CREATED="1543550464342" ID="ID_1599048883" MODIFIED="1543550480707" TEXT="A unique number"/>
<node CREATED="1543550481302" ID="ID_915416679" MODIFIED="1543550495066" TEXT="Used to identify process"/>
<node CREATED="1543550517502" ID="ID_319405625" MODIFIED="1543550584267" TEXT="Some numbers is reserved for special process"/>
</node>
<node CREATED="1543551197766" ID="ID_932973997" MODIFIED="1543551226329" POSITION="right" TEXT="Process &#x111;&#x1b0;&#x1ee3;c sinh ra v&#xe0; k&#x1ebf;t th&#xfa;c nh&#x1b0; th&#x1ebf; n&#xe0;o"/>
<node CREATED="1543551272926" ID="ID_1472445254" MODIFIED="1543552250331" POSITION="right" TEXT="fork function">
<node CREATED="1543551296918" ID="ID_940520127" MODIFIED="1543551297778" TEXT="pid_t fork(void);"/>
<node CREATED="1543551349982" ID="ID_1473726044" MODIFIED="1543551984868" TEXT="T&#x1ea1;o ra 1 b&#x1ea3;n sao cho b&#x1ed9; nh&#x1edb; hi&#x1ec7;n t&#x1ea1;i c&#x1ee7;a process">
<node CREATED="1543551879238" ID="ID_1673537548" MODIFIED="1543551885395" TEXT="Copy on write"/>
</node>
<node CREATED="1543551986110" ID="ID_915691038" MODIFIED="1543552007898" TEXT="PID th&#x1ead;t s&#x1ebd; &#x111;&#x1b0;&#x1ee3;c tr&#x1ea3; cho process con"/>
<node CREATED="1543552008526" ID="ID_1083117521" MODIFIED="1543552020106" TEXT="PID 0 s&#x1ebd; tr&#x1ea3; v&#x1ec1; cho process cha"/>
<node CREATED="1543552429854" ID="ID_1639140934" MODIFIED="1543552455019" TEXT="Con c&#xf3; th&#x1ec3; ch&#x1ea1;y v&#xe0; ho&#xe0;n th&#xe0;nh c&#xf4;ng vi&#x1ec7;c tr&#x1b0;&#x1edb;c cha"/>
</node>
<node CREATED="1543552247932" ID="ID_1236191505" MODIFIED="1543552256899" POSITION="right" TEXT="fork function">
<node CREATED="1543552027454" ID="ID_460747402" MODIFIED="1543552266755" TEXT="Th&#x1ef1;c h&#xe0;nh: Vi&#x1ebf;t 1 ch&#x1b0;&#x1a1;ng tr&#xec;nh C fork ra cha v&#xe0; con, trong process cha in ra pid v&#xe0; &quot;I am parent&quot;, trong process con l&#xe0;m t&#x1b0;&#x1a1;ng t&#x1ef1;. So s&#xe1;nh PID in ra v&#xe0; PID s&#x1eed; d&#x1ee5;ng l&#x1ec7;nh PS"/>
<node CREATED="1543552199444" ID="ID_894068106" MODIFIED="1543552227169" TEXT="Th&#x1eed; m&#x1edf; 1 file tr&#x1b0;&#x1edb;c khi fork, sau &#x111;&#xf3; c&#x1ea3; cha v&#xe0; con c&#xf9;ng ghi v&#xe0;o file fd tr&#x1b0;&#x1edb;c &#x111;&#xf3; v&#xe0; check k&#x1ebf;t qu&#x1ea3;"/>
<node CREATED="1543552294070" ID="ID_872833618" MODIFIED="1543552304977" TEXT="Th&#x1eed; v&#x1edb;i bi&#x1ebf;n th&#xf4;ng th&#x1b0;&#x1edd;ng v&#xe0; xem k&#x1ebf;t qu&#x1ea3;"/>
</node>
<node CREATED="1543558368944" ID="ID_1757729096" MODIFIED="1543558382942" POSITION="right" TEXT="exec function">
<node CREATED="1543558404930" ID="ID_1368498787" MODIFIED="1543558406951" TEXT="int execl(const char *pathname, const char *arg0, ... /* (char *)0 */ )"/>
<node CREATED="1543558434143" ID="ID_793590594" MODIFIED="1543558462446" TEXT="Thay the toan bo khong gian bo nh&#x1edb; c&#x1ee7;a process cha thanh process con"/>
<node CREATED="1543558523168" ID="ID_308553227" MODIFIED="1543558538237" TEXT="C&#xf3; th&#x1ec3; kh&#x1edf;i t&#x1ea1;o 1 ch&#x1b0;&#x1a1;ng tr&#xec;nh m&#x1edb;i"/>
<node CREATED="1543558746494" ID="ID_1169832725" MODIFIED="1543558774453" TEXT="Sau khi g&#x1ecd;i h&#xe0;m exec, to&#xe0;n b&#x1ed9; source code ph&#xed;a sau c&#x1ee7;a ch&#x1b0;&#x1a1;ng tr&#xec;nh s&#x1ebd; kh&#xf4;ng &#x111;&#x1b0;&#x1ee3;c th&#x1ef1;c hi&#x1ec7;n n&#x1eef;a"/>
</node>
<node CREATED="1543558324388" ID="ID_1763120952" MODIFIED="1543558337484" POSITION="right" TEXT="exit function">
<node CREATED="1543559015026" ID="ID_1515559609" MODIFIED="1543559080479" TEXT="Cho d&#xf9; process ch&#x1ee7; &#x111;&#x1ed9;ng ho&#x1eb7;c b&#x1ecb; &#x111;&#x1ed9;ng k&#x1ebf;t th&#xfa;c, 1 gi&#xe1; tr&#x1ecb; tr&#x1ea1;ng th&#xe1;i k&#x1ebf;t th&#xfa;c lu&#xf4;n &#x111;&#x1b0;&#x1ee3;c tr&#x1ea3; v&#x1ec1; cho process cha"/>
<node CREATED="1543559112920" ID="ID_281611475" MODIFIED="1543559151622" TEXT="Sau khi g&#x1ecd;i h&#xe0;m exit v&#xe0; g&#x1eed;i tr&#x1ea1;ng th&#xe1;i v&#x1ec1; cho process cha, process con ch&#x1edd; &#x111;&#x1ee3;i t&#xed;n hi&#x1ec7;u x&#xe1;c nh&#x1ead;n t&#x1eeb; cha"/>
<node CREATED="1543559320235" ID="ID_1505265456" MODIFIED="1543559342039" TEXT="N&#x1ebf;u cha k&#x1ebf;t th&#xfa;c tr&#x1b0;&#x1edb;c con th&#xec; init process s&#x1ebd; l&#xe0;m cha m&#x1edb;i."/>
</node>
<node CREATED="1543559441290" ID="ID_1536844320" MODIFIED="1543559451342" POSITION="right" TEXT="wait function">
<node CREATED="1543559855219" ID="ID_457545560" MODIFIED="1543559856615" TEXT="pid_t wait(int *wstatus)"/>
<node CREATED="1543559883362" ID="ID_850571126" MODIFIED="1543559930439" TEXT="Khi 1 process con k&#x1ebf;t th&#xfa;c, ngo&#xe0;i exit status, kernel c&#xf2;n g&#x1eed;i SIGCHILD signal cho process cha"/>
<node CREATED="1543559967359" ID="ID_861406118" MODIFIED="1543559981130" TEXT="Block process cho &#x111;&#x1ebf;n khi 1 trong c&#xe1;c process con k&#x1ebf;t th&#xfa;c"/>
<node CREATED="1543560256835" ID="ID_713215921" MODIFIED="1543560389624" TEXT="Th&#x1ef1;c h&#xe0;nh: Vi&#x1ebf;t 2 ch&#x1b0;&#x1a1;ng tr&#xec;nh cha v&#xe0; con. Ch&#x1b0;&#x1a1;ng tr&#xec;nh cha g&#x1ecd;i con v&#x1edb;i tham s&#x1ed1; truy&#x1ec1;n v&#xe0;o l&#xe0; &#x111;&#x1b0;&#x1edd;ng d&#x1eab;n &#x111;&#x1ebf;n file. Ch&#x1b0;&#x1a1;ng tr&#xec;nh con ghi hello world v&#xe0;o file v&#xe0; tr&#x1ea3; v&#x1ec1; tr&#x1ea1;ng th&#xe1;i k&#x1ebf;t qu&#x1ea3; cho cha. Cha ph&#x1ea3;i bi&#x1ebf;t k&#x1ebf;t qu&#x1ea3; th&#x1ef1;c hi&#x1ec7;n c&#x1ee7;a ch&#x1b0;&#x1a1;ng tr&#xec;nh con."/>
</node>
<node CREATED="1543560408916" ID="ID_608771282" MODIFIED="1543564299887" POSITION="right" TEXT="Thay &#x111;&#x1ed5;i user id v&#xe0;o group id">
<node CREATED="1543560434228" ID="ID_1272550535" MODIFIED="1543560434968" TEXT="int setuid(uid_t uid)"/>
<node CREATED="1543560443500" ID="ID_658174180" MODIFIED="1543560444345" TEXT="int setgid(gid_t gid)"/>
<node CREATED="1543560560604" ID="ID_411146541" MODIFIED="1543560584472" TEXT="Khi user-id v&#xe0; group-id thay &#x111;&#x1ed5;i th&#xec; quy&#x1ec1;n c&#x1ee7;a process c&#x169;ng thay &#x111;&#x1ed5;i t&#x1b0;&#x1a1;ng &#x1ee9;ng"/>
<node CREATED="1543560629796" ID="ID_1534417456" MODIFIED="1543560658561" TEXT="S&#x1ebd; set theo xu h&#x1b0;&#x1edb;ng gi&#x1ea3;m quy&#x1ec1;n c&#x1ee7;a process"/>
<node CREATED="1543560762516" ID="ID_448234736" MODIFIED="1543560854416" TEXT="Th&#x1ef1;c h&#xe0;nh: D&#xfa;ng user A &#x111;&#x1ec3; call ch&#x1b0;&#x1a1;ng tr&#xec;nh C, trong ch&#x1b0;&#x1a1;ng tr&#xec;nh C chuy&#x1ec3;n sang user B, sau &#x111;&#xf3; ch&#x1b0;&#x1a1;ng tr&#xec;nh s&#x1ebd; t&#x1ea1;o file m&#x1edb;i v&#xe0; file &#x111;&#xf3; ph&#x1ea3;i thu&#x1ed9;c quy&#x1ec1;n s&#x1edf; h&#x1eef;u l&#xe0; user B"/>
</node>
<node CREATED="1543560996668" ID="ID_1418183827" MODIFIED="1543561237160" POSITION="right" TEXT="C&#xe1;c file th&#xf4;ng d&#x1ecb;ch">
<node CREATED="1543561011956" ID="ID_677297191" MODIFIED="1543561065144" TEXT="Th&#xf4;ng d&#x1ecb;ch"/>
<node CREATED="1543561065452" ID="ID_516321923" MODIFIED="1543561068272" TEXT="Bi&#xea;n d&#x1ecb;ch"/>
<node CREATED="1543561071796" ID="ID_1221454640" MODIFIED="1543561091667" TEXT="Header c&#x1ee7;a file">
<node CREATED="1543561099013" ID="ID_47631943" MODIFIED="1543561100120" TEXT="#! pathname [ optional-argument ]">
<node CREATED="1543561100987" ID="ID_117184716" MODIFIED="1543561106448" TEXT="exec header"/>
</node>
<node CREATED="1543561127212" ID="ID_1900976116" MODIFIED="1543561138664" TEXT="#! /bin/sh"/>
</node>
<node CREATED="1543561265028" ID="ID_106201131" MODIFIED="1543561286088" TEXT="Set quy&#x1ec1;n execute cho file th&#xf4;ng d&#x1ecb;ch"/>
</node>
<node CREATED="1543561228228" ID="ID_919259397" MODIFIED="1543561918901" POSITION="right" TEXT="C&#xe1;c file th&#xf4;ng d&#x1ecb;ch">
<node CREATED="1543561240227" ID="ID_1105092488" MODIFIED="1543561258160" TEXT="Copy script trong slide v&#xe0; ch&#x1ea1;y th&#x1eed;"/>
<node CREATED="1543561298971" ID="ID_408199325" MODIFIED="1543561328576" TEXT="Vi&#x1ebf;t 1 ch&#x1b0;&#x1a1;ng tr&#xec;nh C c&#xf3; t&#xea;n l&#xe0; HocjLinux_sh v&#xe0; d&#xf9;ng n&#xf3; th&#xf4;ng d&#x1ecb;ch cho script tr&#xea;n"/>
</node>
<node CREATED="1543561922531" ID="ID_1973138093" MODIFIED="1543563279766" POSITION="right" TEXT="Run command line trong C">
<node CREATED="1543561935275" ID="ID_1920573862" MODIFIED="1543561969296" TEXT="int system(const char *command)"/>
<node CREATED="1543561974810" ID="ID_1782325355" MODIFIED="1543561986344" TEXT="Cho ph&#xe9;p th&#x1ef1;c hi&#x1ec7;n 1 c&#xe2;u l&#x1ec7;nh trong C"/>
<node CREATED="1543562028230" ID="ID_405913598" MODIFIED="1543562064232" TEXT="Fork ch&#x1b0;&#x1a1;ng tr&#xec;nh hi&#x1ec7;n t&#x1ea1;i v&#xe0; d&#xf9;ng ch&#x1b0;&#x1a1;ng tr&#xec;nh con &#x111;&#x1ec3; exec ch&#x1b0;&#x1a1;ng tr&#xec;nh "/>
</node>
<node CREATED="1543562531522" ID="ID_664622642" MODIFIED="1543562557715" POSITION="right" TEXT="Tracking tr&#x1ea1;ng th&#xe1;i k&#x1ebf;t th&#xfa;c c&#x1ee7;a process">
<node CREATED="1543562560602" ID="ID_1397620711" MODIFIED="1543562588702" TEXT="&#x110;&#xf4;i khi trong h&#x1ec7; th&#x1ed1;ng c&#xf3; process b&#x1ecb; terminate m&#xe0; kh&#xf4;ng bi&#x1ebf;t l&#xfd; do"/>
<node CREATED="1543562589121" ID="ID_415059646" MODIFIED="1543562622246" TEXT="Enable t&#xed;nh n&#x103;ng n&#xe0;y khi build kernel s&#x1ebd; cho ph&#xe9;p tracking tr&#x1ea1;ng th&#xe1;i k&#x1ebf;t th&#xfa;c c&#x1ee7;a process"/>
<node CREATED="1543562645994" ID="ID_505950604" MODIFIED="1543562656847" TEXT="Keyword: Process Accounting"/>
</node>
<node CREATED="1543562756234" ID="ID_1805416282" MODIFIED="1543564771606" POSITION="right" TEXT="B&#xe0;i t&#x1ead;p">
<node CREATED="1543562869411" ID="ID_1646788789" MODIFIED="1543562906622" TEXT="Vi&#x1ebf;t 1 ch&#x1b0;&#x1a1;ng tr&#xec;nh C s&#x1eed; d&#x1ee5;ng system() &#x111;&#x1ec3; up/down v&#xe0; set ip cho port m&#x1ea1;ng"/>
<node CREATED="1543562909905" ID="ID_1155091804" MODIFIED="1543563114791" TEXT="Vi&#x1ebf;t 1 ch&#x1b0;&#x1a1;ng tr&#xec;nh s&#x1eed; d&#x1ee5;ng h&#xe0;m fork &#x111;&#x1ec3; t&#x1ea1;o ra ch&#x1b0;&#x1a1;ng tr&#xec;nh con, trong ch&#x1b0;&#x1a1;ng tr&#xec;nh con run c&#xe2;u l&#x1ec7;nh ls v&#xe0; ghi out v&#xe0;o 1 file. Ch&#x1b0;&#x1a1;ng tr&#xec;nh cha check tr&#x1ea1;ng th&#xe1;i tr&#x1ea3; v&#x1ec1; n&#x1ebf;u l&#xe0; success th&#xec; &#x111;&#x1ecd;c t&#x1eeb; file v&#xe0; in ra m&#xe0;n h&#xec;nh k&#x1ebf;t qu&#x1ea3;."/>
</node>
<node CREATED="1543551406222" ID="ID_989184151" MODIFIED="1543551413715" POSITION="left" TEXT="Note">
<node CREATED="1543551432478" ID="ID_223306456" MODIFIED="1543551434338" TEXT="Process &#x111;&#x1b0;&#x1ee3;c sinh ra v&#xe0; k&#x1ebf;t th&#xfa;c nh&#x1b0; th&#x1ebf; n&#xe0;o">
<node CREATED="1543551435918" ID="ID_1020956668" MODIFIED="1543551443690" TEXT="Ve 1 hinh vong doi cua process"/>
<node CREATED="1543551447117" ID="ID_894993662" MODIFIED="1543551474347" TEXT="fork/exec -&gt; running -&gt; exit -&gt; wait"/>
</node>
<node CREATED="1543551916694" ID="ID_1146001444" MODIFIED="1543551917531" TEXT="fork function">
<node CREATED="1543551918486" ID="ID_1076266580" MODIFIED="1543551954571" TEXT="C&#xe1;c bi&#x1ebf;n global v&#xe0; local trong h&#xe0;m hi&#x1ec7;n t&#x1ea1;i s&#x1ebd; &#x111;&#x1b0;&#x1ee3;c sao ch&#xe9;p nguy&#xea;n gi&#xe1; tr&#x1ecb; &#x1edf; process con"/>
</node>
<node CREATED="1543558715139" ID="ID_718885200" MODIFIED="1543558715895" TEXT="exec function">
<node CREATED="1543558795834" ID="ID_475490282" MODIFIED="1543558830414" TEXT="Gi&#xe1; tr&#x1ecb; tr&#x1ea3; v&#x1ec1; cho process cha trong tr&#x1b0;&#x1edd;ng h&#x1ee3;p con g&#x1ecd;i exec s&#x1ebd; l&#xe0; gi&#xe1; tr&#x1ecb; tr&#x1ea3; v&#x1ec1; c&#x1ee7;a program &#x111;&#x1b0;&#x1ee3;c h&#xe0;m exec g&#x1ecd;i"/>
</node>
<node CREATED="1543559215378" ID="ID_443364378" MODIFIED="1543559216222" TEXT="exit function">
<node CREATED="1543559227978" ID="ID_1103541612" MODIFIED="1543559313719" TEXT="Trong khi ch&#x1edd; &#x111;&#x1ee3;i t&#xed;n hi&#x1ec7;u x&#xe1;c nh&#x1ead;n t&#x1eeb; cha, process con s&#x1ebd; r&#x1a1;i v&#xe0;o tr&#x1ea1;ng th&#xe1;i zombie. Trong tr&#x1ea1;ng th&#xe1;i n&#xe0;y n&#xf3; ko chi&#x1ebf;m CPU, v&#xe0; h&#x1ea7;u nh&#x1b0; ko t&#x1ed1;n b&#x1ed9; nh&#x1edb;. Tuy nhi&#xea;n ko th&#x1ec3; kill n&#xf3; &#x111;&#x1b0;&#x1ee3;c."/>
<node CREATED="1543559348922" ID="ID_1832137160" MODIFIED="1543559369789" TEXT="Vi&#x1ec7;c chuy&#x1ec3;n &#x111;&#x1ed5;i cha do OS th&#x1ef1;c hi&#x1ec7;n, n&#xf3; thay con tr&#x1ecf; cha tr&#x1ecf; v&#xe0;o init process."/>
<node CREATED="1543559388194" ID="ID_1128981671" MODIFIED="1543559399662" TEXT="Init process bi&#x1ebf;t c&#xe1;ch x&#x1eed; l&#xfd; khi con k&#x1ebf;t th&#xfa;c"/>
<node CREATED="1543559660850" ID="ID_198061053" MODIFIED="1543559668295" TEXT="k&#x1ec3; v&#x1ec1; bug &#x111;&#xe3; t&#x1eeb;ng g&#x1eb7;p ph&#x1ea3;i"/>
</node>
<node CREATED="1543560089235" ID="ID_1806344304" MODIFIED="1543560090503" TEXT="wait function">
<node CREATED="1543560092171" ID="ID_347507332" MODIFIED="1543560122085" TEXT="N&#x1ebf;u spawn ra nhi&#x1ec1;u process con v&#x1edb;i th&#x1edd;i gian ch&#x1ea1;y kh&#xe1;c nhau th&#xec; process cha ph&#x1ea3;i &#x111;&#x1ea3;m b&#x1ea3;o &#x111;&#x1ee3;i &#x111;&#x1b0;&#x1ee3;c t&#x1ea5;t c&#x1ea3; c&#xe1;c con k&#x1ebf;t th&#xfa;c"/>
<node CREATED="1543560122472" ID="ID_469845069" MODIFIED="1543560152993" TEXT="d&#xf9;ng 1 h&#xe0;m while check gi&#xe1; tr&#x1ecb; tr&#x1ea3; v&#x1ec1; c&#x1ee7;a h&#xe0;m wait, n&#x1ebf;u nh&#x1ecf; h&#x1a1;n 0 th&#xec; tho&#xe1;t kh&#x1ecf;i while"/>
</node>
<node CREATED="1543560456292" ID="ID_816953520" MODIFIED="1543560457872" TEXT="Thay &#x111;&#x1ed5;i user id v&#xe0;o group id">
<node CREATED="1543560661260" ID="ID_12778930" MODIFIED="1543560692248" TEXT="N&#xea;n ch&#x1ea1;y process v&#x1edb;i m&#xe3; sudo &#x1edf; &#x111;&#x1ea7;u &#x111;&#x1ec3; tr&#xe1;nh l&#x1ed7;i"/>
<node CREATED="1543560704156" ID="ID_144632161" MODIFIED="1543560730937" TEXT="L&#x1b0;u &#xfd; khi t&#x1ea1;o file th&#xec; quy&#x1ec1;n c&#x1ee7;a file c&#x169;ng thay &#x111;&#x1ed5;i theo"/>
</node>
<node CREATED="1543561826940" ID="ID_1669095900" MODIFIED="1543561828352" TEXT="C&#xe1;c file th&#xf4;ng d&#x1ecb;ch">
<node CREATED="1543561831019" ID="ID_1600090311" MODIFIED="1543561846696" TEXT="Ch&#x1b0;&#x1a1;ng tr&#xec;nh th&#xf4;ng d&#x1ecb;ch d&#x1ec5; l&#x1ed7;i h&#x1a1;n bi&#xea;n d&#x1ecb;ch"/>
<node CREATED="1543561847107" ID="ID_228753900" MODIFIED="1543561862672" TEXT="Ch&#x1b0;&#x1a1;ng tr&#xec;nh th&#xf4;ng d&#x1ecb;ch c&#xf3; kh&#x1ea3; n&#x103;ng ch&#x1ecb;u l&#x1ed7;i t&#x1ed1;t h&#x1a1;n bi&#xea;n d&#x1ecb;ch"/>
</node>
<node CREATED="1543561995794" ID="ID_308674261" MODIFIED="1543561997440" TEXT="system function">
<node CREATED="1543561998123" ID="ID_814420300" MODIFIED="1543561999616" TEXT="Ch&#x1ead;m"/>
<node CREATED="1543562000411" ID="ID_783126994" MODIFIED="1543562010496" TEXT="Kh&#xf4;ng cover &#x111;&#x1b0;&#x1ee3;c l&#x1ed7;i &#x1edf; command"/>
</node>
</node>
</node>
</map>
