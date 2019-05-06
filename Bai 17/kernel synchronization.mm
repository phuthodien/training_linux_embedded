<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1554432058053" ID="ID_590712025" MODIFIED="1554432135638" TEXT="Kernel synchronization">
<node CREATED="1554445008980" ID="ID_502384538" MODIFIED="1554445519581" POSITION="right" TEXT="Agenda">
<node CREATED="1554445029044" ID="ID_398181725" MODIFIED="1554445045512" TEXT="C&#xe1;c tr&#x1ea1;ng th&#xe1;i c&#x1ea7;n b&#x1ea3;o v&#x1ec7; d&#x1b0;&#x1edb;i driver"/>
<node CREATED="1554445061490" ID="ID_1616772339" MODIFIED="1554445089568" TEXT="C&#xe1;c &#x111;&#x1ecb;nh ngh&#x129;a c&#x1a1; b&#x1ea3;n"/>
<node CREATED="1554445059276" ID="ID_538315617" MODIFIED="1554445059688" TEXT="K&#x1ecb;ch b&#x1ea3;n v&#xe0; c&#xe1;ch x&#x1eed; l&#xfd;"/>
</node>
<node CREATED="1554434191804" ID="ID_1279612968" MODIFIED="1554434235329" POSITION="right" TEXT="C&#xe1;c tr&#x1ea1;ng th&#xe1;i c&#x1ea7;n b&#x1ea3;o v&#x1ec7; d&#x1b0;&#x1edb;i driver">
<node CREATED="1554434352132" ID="ID_1508963756" MODIFIED="1554434352992" TEXT="Race condition">
<node CREATED="1554434354412" ID="ID_986090131" MODIFIED="1554434381089" TEXT="K&#x1ebf;t qu&#x1ea3; c&#x1ee7;a vi&#x1ec7;c t&#xed;nh to&#xe1;n b&#x1ecb; &#x1ea3;nh h&#x1b0;&#x1edf;ng n&#x1ebf;u c&#xf3; h&#x1a1;n 2 thread c&#xf9;ng th&#x1ef1;c thi &#x111;o&#x1ea1;n code &#x111;&#xf3;"/>
</node>
<node CREATED="1554434386382" ID="ID_626475132" MODIFIED="1554434391697" TEXT="Critical section">
<node CREATED="1554434393148" ID="ID_1017435247" MODIFIED="1554434430943" TEXT="&#x110;o&#x1ea1;n code kh&#xf4;ng &#x111;&#x1b0;&#x1ee3;c ph&#xe9;p ng&#x1eaf;t qu&#xe3;ng t&#x1eeb; khi b&#x1eaf;t &#x111;&#x1ea7;u &#x111;&#x1ebf;n khi ho&#xe0;n th&#xe0;nh"/>
</node>
<node CREATED="1554434477428" ID="ID_1745647063" MODIFIED="1554434481031" TEXT="Dead lock">
<node CREATED="1554434622548" ID="ID_960751433" MODIFIED="1554434647025" TEXT="Hai ho&#x1eb7;c nhi&#x1ec1;u thread &#x111;i v&#xe0;o v&#xf2;ng l&#x1eb7;p v&#xf4; t&#x1ead;n &#x111;&#x1ec3; ch&#x1edd; &#x111;&#x1ee3;i 1 t&#xe0;i nguy&#xea;n n&#xe0;o &#x111;&#xf3;"/>
</node>
</node>
<node CREATED="1554432316887" ID="ID_1801741282" MODIFIED="1554433475593" POSITION="right" TEXT="C&#xe1;c &#x111;&#x1ecb;nh ngh&#x129;a c&#x1a1; b&#x1ea3;n">
<node CREATED="1554432459771" ID="ID_256370188" MODIFIED="1554432509684" TEXT="Idle state">
<node CREATED="1554432513135" ID="ID_550238630" MODIFIED="1554432566098" TEXT="Core &#x111;ang th&#x1ef1;c hi&#x1ec7;n c&#xe2;u l&#x1ec7;nh tr&#xea;n t&#x1ea7;ng user-space ho&#x1eb7;c &#x111;ang ch&#x1ea1;y v&#xf2;ng l&#x1eb7;p idle_loop()"/>
</node>
<node CREATED="1554432901701" ID="ID_1709512615" MODIFIED="1554432905753" TEXT="Running state">
<node CREATED="1554432906436" ID="ID_784430517" MODIFIED="1554432922617" TEXT="Core &#x111;ang th&#x1ef1;c hi&#x1ec7;n c&#xe2;u l&#x1ec7;nh d&#x1b0;&#x1edb;i t&#x1ea7;ng kernel space"/>
</node>
<node CREATED="1554433479188" ID="ID_287374249" MODIFIED="1554433509233" TEXT="Non-preemptive, Preemptive and Selective Preemptive Kernel">
<node CREATED="1554433544564" ID="ID_987748737" MODIFIED="1554433596033" TEXT="Trong non-preemptive kernel, trong tr&#x1ea1;ng th&#xe1;i running state core s&#x1ebd; gi&#x1eef; CPU &#x111;&#x1ebf;n khi th&#x1ef1;c hi&#x1ec7;n xong"/>
<node CREATED="1554433600205" ID="ID_544072177" MODIFIED="1554433635672" TEXT="Trong preemptive kernel, core c&#xf3; th&#x1ec3; nh&#x1b0;&#x1edd;ng CPU trong khi n&#xf3; &#x111;ang &#x1edf; tr&#x1ea1;ng th&#xe1;i running"/>
</node>
</node>
<node CREATED="1554432951974" ID="ID_1082202433" MODIFIED="1554436509579" POSITION="right" TEXT="&#x110;&#x1ed9; &#x1b0;u ti&#xea;n c&#x1ee7;a task">
<node CREATED="1554432978636" ID="ID_90258279" MODIFIED="1554433019897" TEXT="Hardware interrupt and exception"/>
<node CREATED="1554432992117" ID="ID_1792895337" MODIFIED="1554433023369" TEXT="Kernel instructions"/>
<node CREATED="1554433026724" ID="ID_1445572217" MODIFIED="1554433036641" TEXT="User-space instruction">
<node CREATED="1554433232492" ID="ID_534006858" MODIFIED="1554433264673" TEXT="Khi s&#x1eed; d&#x1ee5;ng busy loop tr&#xea;n user-space th&#xec; chu&#x1ed9;t v&#xe0; b&#xe0;n ph&#xed;m kh&#xf4;ng b&#x1ecb; treo"/>
</node>
</node>
<node CREATED="1554436515618" ID="ID_360907017" MODIFIED="1554436534543" POSITION="right" TEXT="K&#x1ecb;ch b&#x1ea3;n v&#xe0; c&#xe1;ch x&#x1eed; l&#xfd;"/>
<node CREATED="1554436692834" ID="ID_1600520359" MODIFIED="1554436743975" POSITION="right" TEXT="B&#x1ea3;o v&#x1ec7; 1 file ho&#x1eb7;c thanh ghi">
<node CREATED="1554436744890" ID="ID_1921259837" MODIFIED="1554436794815" TEXT="N&#x1ebf;u cung c&#x1ea5;p &#x111;&#x1ecb;a ch&#x1ec9; thanh ghi ho&#x1eb7;c t&#xea;n file th&#xec; ai c&#x169;ng c&#xf3; th&#x1ec3; ghi &#x111;&#x1b0;&#x1ee3;c"/>
<node CREATED="1554436795960" ID="ID_1557028643" MODIFIED="1554436828494" TEXT="D&#x1ea5;u t&#xea;n file, &#x111;&#x1ecb;a ch&#x1ec9; thanh ghi &#x111;i. Cung c&#x1ea5;p 1 h&#xe0;m wrapper chuy&#xea;n d&#xf9;ng &#x111;&#x1ec3; &#x111;&#x1ecd;c ghi v&#xe0;o c&#xe1;c t&#xe0;i nguy&#xea;n &#x111;&#xf3;"/>
</node>
<node CREATED="1554437247112" ID="ID_469215137" MODIFIED="1554437318111" POSITION="right" TEXT="Mutex">
<node CREATED="1554437292922" ID="ID_1323227851" MODIFIED="1554437324302" TEXT="M&#xf4; t&#x1ea3;">
<node CREATED="1554437345258" ID="ID_477389253" MODIFIED="1554437470486" TEXT="M&#xe1;y t&#xed;nh m&#x1edf; 2 &#x1ee9;ng d&#x1ee5;ng ch&#x1a1;i game. C&#x1ea3; 2 &#x111;&#x1ec1;u c&#x1ea7;n chu&#x1ed9;t v&#xe0; b&#xe0;n ph&#xed;m. T&#x1ea1;i 1 th&#x1edd;i &#x111;i&#x1ec3;m m&#xe1;y t&#xed;nh ch&#x1ec9; cho ph&#xe9;p 1 &#x1ee9;ng d&#x1ee5;ng &#x111;&#x1b0;&#x1ee3;c truy c&#x1ead;p v&#xe0;o b&#x1ed9; &#x111;&#xf4;i t&#xe0;i nguy&#xea;n &#x111;&#xf3;."/>
<node CREATED="1554437471073" ID="ID_1605339452" MODIFIED="1554437474814" TEXT="Sample code"/>
</node>
</node>
<node CREATED="1554437534113" ID="ID_128700855" MODIFIED="1554437537622" POSITION="right" TEXT="Semaphore">
<node CREATED="1554437538986" ID="ID_1684690483" MODIFIED="1554437542125" TEXT="M&#xf4; t&#x1ea3;">
<node CREATED="1554437543395" ID="ID_1315065644" MODIFIED="1554437592719" TEXT="M&#xe1;y t&#xed;nh c&#xf3; 2 c&#x1ed5;ng m&#x1ea1;ng, trong m&#x1ed9;t th&#x1edd;i di&#x1ec3;m c&#xf3; t&#x1ed1;i &#x111;a 2 &#x1ee9;ng d&#x1ee5;ng &#x111;&#x1b0;&#x1ee3;c ph&#xe9;p truy c&#x1ead;p v&#xe0;o port m&#x1ea1;ng."/>
<node CREATED="1554437593274" ID="ID_1785091795" MODIFIED="1554437596030" TEXT="Sample code"/>
<node CREATED="1554438819049" ID="ID_1515826998" MODIFIED="1554438846208" TEXT="C&#x1ea3; semaphore l&#x1eab;n mutex &#x111;&#x1ec1;u g&#xe2;y sleep trong thread g&#x1ecd;i n&#xf3;, do &#x111;&#xf3; kh&#xf4;ng d&#xf9;ng &#x111;&#x1b0;&#x1ee3;c trong interrupt handler"/>
</node>
</node>
<node CREATED="1554438863576" ID="ID_206348933" MODIFIED="1554438917630" POSITION="right" TEXT="Disable scheduler">
<node CREATED="1554438918338" ID="ID_1874250822" MODIFIED="1554439036119" TEXT="Thread b&#x1b0;&#x1edb;c v&#xe0;o m&#x1ed9;t &#x111;o&#x1ea1;n code y&#xea;u c&#x1ea7;u ph&#x1ea3;i th&#x1ef1;c hi&#x1ec7;n xong tr&#x1b0;&#x1edb;c dead line n&#xe0;o &#x111;&#xf3;. Do &#x111;&#xf3; thread c&#x1ea7;n ph&#x1ea3;i gi&#x1eef; core trong su&#x1ed1;t th&#x1edd;i gian n&#xf3; th&#x1ef1;c hi&#x1ec7;n &#x111;o&#x1ea1;n code &#x111;&#xf3;."/>
<node CREATED="1554439039898" ID="ID_110926665" MODIFIED="1554439078398" TEXT="M&#x1ed7;i core s&#x1ebd; c&#xf3; 1 b&#x1ed9; scheduler ri&#xea;ng, kh&#xf4;ng c&#xf3; c&#xe1;ch n&#xe0;o &#x111;&#x1ec3; disable to&#xe0;n b&#x1ed9; scheduler c&#x1ee7;a h&#x1ec7; th&#x1ed1;ng"/>
<node CREATED="1554439078960" ID="ID_1708897868" MODIFIED="1554439084116" TEXT="local_bh_disable"/>
</node>
<node CREATED="1554439159760" ID="ID_707858339" MODIFIED="1554439166157" POSITION="right" TEXT="Busy lock">
<node CREATED="1554439167241" ID="ID_547874857" MODIFIED="1554439202999" TEXT="C&#x1a1; ch&#x1ebf; lock gi&#x1ed1;ng mutex, nh&#x1b0;ng kh&#xf4;ng g&#xe2;y sleep thread g&#x1ecd;i h&#xe0;m &#x111;&#xf3;"/>
<node CREATED="1554439207394" ID="ID_1959668211" MODIFIED="1554439213246" TEXT="D&#x1ec5; b&#x1ecb; dead lock"/>
<node CREATED="1554439214386" ID="ID_903869156" MODIFIED="1554439217982" TEXT="spin_lock"/>
</node>
<node CREATED="1554444572444" ID="ID_696000882" MODIFIED="1554444584641" POSITION="right" TEXT="Bus lock">
<node CREATED="1554444642933" ID="ID_995521601" MODIFIED="1554444841385" TEXT="&#x110;&#x1ecb;a ch&#x1ec9; c&#x1ee7;a bi&#x1ebf;n/thanh ghi &#x111;&#x1b0;&#x1ee3;c public. Do &#x111;&#xf3; c&#xe1;c thread kh&#xe1;c c&#xf3; th&#x1ec3; c&#xf9;ng 1 l&#xfa;c ghi tr&#x1ef1;c ti&#x1ebf;p th&#xf4;ng qua &#x111;&#x1ecb;a ch&#x1ec9;. Bus lock cho ph&#xe9;p t&#x1ea1;i 1 th&#x1edd;i &#x111;i&#x1ec3;m ch&#x1ec9; c&#xf3; 1 thread &#x111;&#x1b0;&#x1ee3;c truy c&#x1ead;p v&#xe0;o b&#x1ed9; nh&#x1edb;"/>
<node CREATED="1554444869460" ID="ID_16353711" MODIFIED="1554444873944" TEXT="atomic_read()"/>
</node>
<node CREATED="1554444981036" ID="ID_1356035974" MODIFIED="1554444987272" POSITION="right" TEXT="B&#x1ea3;ng t&#x1ed5;ng h&#x1ee3;p"/>
</node>
</map>
