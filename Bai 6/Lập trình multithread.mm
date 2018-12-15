<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1544756794133" ID="ID_1983587625" MODIFIED="1544756802963" TEXT="L&#x1ead;p tr&#xec;nh multithread">
<node CREATED="1544758142045" ID="ID_1768578981" MODIFIED="1544758144717" POSITION="right" TEXT="Agenda">
<node CREATED="1544761977554" ID="ID_17480624" MODIFIED="1544761978646" TEXT="&#x1af;u &#x111;i&#x1ec3;m nh&#x1b0;&#x1ee3;c &#x111;i&#x1ec3;m"/>
<node CREATED="1544761979306" ID="ID_1660438787" MODIFIED="1544761983302" TEXT="T&#x1ea1;o v&#xe0; h&#x1ee7;y thread"/>
<node CREATED="1544761985962" ID="ID_1657267005" MODIFIED="1544761991118" TEXT="&#x110;&#x1ed3;ng b&#x1ed9; gi&#x1eef;a c&#xe1;c thread"/>
</node>
<node CREATED="1544758145176" ID="ID_509842927" MODIFIED="1544758286469" POSITION="right" TEXT="&#x1af;u &#x111;i&#x1ec3;m nh&#x1b0;&#x1ee3;c &#x111;i&#x1ec3;m">
<node CREATED="1544758178528" ID="ID_958702346" MODIFIED="1544758218309" TEXT="T&#x1ed1;i &#x1b0;u &#x111;&#x1b0;&#x1ee3;c hi&#x1ec7;u n&#x103;ng x&#x1eed; l&#xfd; c&#x1ee7;a t&#x1ea5;t c&#x1ea3; c&#xe1;c core"/>
<node CREATED="1544758240151" ID="ID_811569872" MODIFIED="1544758256468" TEXT="C&#xe1;c thread &#x111;&#x1b0;&#x1ee3;c l&#x1ead;p l&#x1ecb;ch m&#x1ed9;t c&#xe1;ch &#x111;&#x1ed9;c l&#x1ead;p"/>
<node CREATED="1544758256984" ID="ID_332713310" MODIFIED="1544758266669" TEXT="Tr&#xe1;nh &#x111;&#x1b0;&#x1ee3;c tr&#x1ea1;ng th&#xe1;i block ch&#x1b0;&#x1a1;ng tr&#xec;nh"/>
<node CREATED="1544758288866" ID="ID_231112527" MODIFIED="1544758305819" TEXT="C&#x1ea7;n l&#x1b0;u &#xfd; &#x111;&#x1ed3;ng b&#x1ed9; d&#x1eef; li&#x1ec7;u gi&#x1eef;a c&#xe1;c thread"/>
</node>
<node CREATED="1544758321824" ID="ID_816162004" MODIFIED="1544758408653" POSITION="right" TEXT="T&#x1ea1;o m&#x1edb;i m&#x1ed9;t thread">
<node CREATED="1544758474640" ID="ID_1195406506" MODIFIED="1544758475573" TEXT="#include &lt;pthread.h&gt;"/>
<node CREATED="1544758476032" ID="ID_1203988260" MODIFIED="1544758487917" TEXT="int pthread_create(pthread_t *restrict tidp, const pthread_attr_t *restrict attr, void *(*start_rtn)(void *), void *restrict arg);"/>
<node CREATED="1544758595648" ID="ID_1564864423" MODIFIED="1544758596733" TEXT="Returns: 0 if OK, error number on failure"/>
</node>
<node CREATED="1544758832464" ID="ID_1169157716" MODIFIED="1544758838348" POSITION="right" TEXT="K&#x1ebf;t th&#xfa;c m&#x1ed9;t thread">
<node CREATED="1544759036856" ID="ID_577830097" MODIFIED="1544759107045" TEXT="Thread call pthread_exit, return ho&#x1eb7;c b&#x1ecb; cancel b&#x1edf;i 1 thread kh&#xe1;c.">
<node CREATED="1544759188696" ID="ID_1210864558" MODIFIED="1544759189309" TEXT="void pthread_exit(void *rval_ptr)"/>
</node>
<node CREATED="1544759109104" ID="ID_1724670954" MODIFIED="1544759153386" TEXT="1 thread kh&#xe1;c ph&#x1ea3;i clear resource c&#x1ee7;a thread &#x111;&#xe3; exit"/>
<node CREATED="1544759200120" ID="ID_405454688" MODIFIED="1544759201357" TEXT="int pthread_join(pthread_t thread, void **rval_ptr)">
<node CREATED="1544759203291" ID="ID_110082870" MODIFIED="1544759229664" TEXT="Block cho &#x111;&#x1ebf;n khi thread c&#x1ea7;n &#x111;&#x1ee3;i k&#x1ebf;t th&#xfa;c"/>
<node CREATED="1544759230508" ID="ID_1577029231" MODIFIED="1544759247435" TEXT="Return EINVAL n&#x1ebf;u thread kia &#x111;&#xe3; k&#x1ebf;t th&#xfa;c t&#x1eeb; tr&#x1b0;&#x1edb;c"/>
</node>
</node>
<node CREATED="1544759730190" ID="ID_1010771134" MODIFIED="1544759733122" POSITION="right" TEXT="Th&#x1ef1;c h&#xe0;nh">
<node CREATED="1544759739454" ID="ID_1377817576" MODIFIED="1544759794305" TEXT="&#x110;&#x1ebf;m s&#x1ed1; l&#x1b0;&#x1ee3;ng s&#x1ed1; l&#x1ebb; t&#x1eeb; 1 &#x111;&#x1ebf;n 100 t&#x1ef7;. Code theo 2 tr&#x1b0;&#x1edd;ng h&#x1ee3;p, tr&#x1b0;&#x1edd;ng h&#x1ee3;p 1 s&#x1eed; d&#x1ee5;ng multithread, tr&#x1b0;&#x1edd;ng h&#x1ee3;p 2 kh&#xf4;ng s&#x1eed; d&#x1ee5;ng multithread. So s&#xe1;nh th&#x1edd;i gian c&#x1ee7;a 2 tr&#x1b0;&#x1edd;ng h&#x1ee3;p."/>
<node CREATED="1544759807574" ID="ID_841043038" MODIFIED="1544760300658" TEXT="Vi&#x1ebf;t 1 ch&#x1b0;&#x1a1;ng tr&#xec;nh C t&#x1ea1;o 10 file, m&#x1ed7;i file ch&#x1ee9;a 5 tri&#x1ec7;u s&#x1ed1; ng&#x1eab;u nhi&#xea;n c&#xf3; 1 ch&#x1eef; s&#x1ed1;. S&#x1eed; d&#x1ee5;ng multithread v&#xe0; kh&#xf4;ng multithread r&#x1ed3;i so s&#xe1;nh th&#x1edd;i gian."/>
</node>
<node CREATED="1544760530958" ID="ID_1712750578" MODIFIED="1544762128841" POSITION="right" TEXT="M&#x1ea5;t &#x111;&#x1ed3;ng b&#x1ed9; d&#x1eef; li&#x1ec7;u gi&#x1eef;a c&#xe1;c thread">
<node CREATED="1544760545102" ID="ID_1177985826" MODIFIED="1544760562371" TEXT="V&#xed; d&#x1ee5; minh h&#x1ecd;a v&#x1ec1; m&#x1ea5;t &#x111;&#x1ed3;ng b&#x1ed9; khi 2 thread c&#xf9;ng &#x111;&#x1ecd;c ghi v&#xe0;o 1 bi&#x1ebf;n"/>
<node CREATED="1544760568142" ID="ID_554433882" MODIFIED="1544760588458" TEXT="M&#x1ea5;t &#x111;&#x1ed3;ng b&#x1ed9; ghi &#x111;&#x1ecd;c ghi v&#xe0;o m&#x1ea3;ng v&#xe0; file"/>
</node>
<node CREATED="1544760610382" ID="ID_1989242365" MODIFIED="1544760621802" POSITION="right" TEXT="C&#xe1;c ph&#x1b0;&#x1a1;ng th&#x1ee9;c &#x111;&#x1ed3;ng b&#x1ed9; d&#x1eef; li&#x1ec7;u"/>
<node CREATED="1544760622638" ID="ID_1853520691" MODIFIED="1544760728223" POSITION="right" TEXT="Mutex">
<node CREATED="1544760741606" ID="ID_814744763" MODIFIED="1544760750170" TEXT="Ch&#x1ec9; c&#xf3; m&#x1ed9;t kh&#xf3;a duy nh&#x1ea5;t."/>
<node CREATED="1544760636158" ID="ID_26642436" MODIFIED="1544760666418" TEXT="Trong m&#x1ed9;t th&#x1edd;i &#x111;i&#x1ec3;m ch&#x1ec9; 1 thread c&#xf3; &#x111;&#x1b0;&#x1ee3;c kh&#xf3;a"/>
<node CREATED="1544760780798" ID="ID_1903544908" MODIFIED="1544760783418" TEXT="Minh h&#x1ecd;a"/>
<node CREATED="1544760983598" ID="ID_766064334" MODIFIED="1544760984826" TEXT="int pthread_mutex_init(pthread_mutex_t *restrict mutex, const pthread_mutexattr_t *restrict attr)"/>
<node CREATED="1544760999174" ID="ID_1435416923" MODIFIED="1544760999872" TEXT="int pthread_mutex_destroy(pthread_mutex_t *mutex)"/>
<node CREATED="1544761011409" ID="ID_1998683232" MODIFIED="1544761012164" TEXT="int pthread_mutex_lock(pthread_mutex_t *mutex)"/>
<node CREATED="1544761022209" ID="ID_1605744923" MODIFIED="1544761022853" TEXT="int pthread_mutex_unlock(pthread_mutex_t *mutex)"/>
</node>
<node CREATED="1544761039058" ID="ID_1017179366" MODIFIED="1544761042439" POSITION="right" TEXT="Th&#x1ef1;c h&#xe0;nh">
<node CREATED="1544761118370" ID="ID_1411025287" MODIFIED="1544761192101" TEXT="Vi&#x1ebf;t ch&#x1b0;&#x1a1;ng tr&#xec;nh C t&#x1ea1;o 2 thread, c&#x1ea3; 2 thread l&#x1ea7;n l&#x1b0;&#x1ee3;t t&#x103;ng bi&#x1ebf;n &#x111;&#xf3; l&#xea;n 1 &#x111;&#x1a1;n v&#x1ecb;, s&#x1eed; d&#x1ee5;ng mutex &#x111;&#x1ec3; &#x111;&#x1ed3;ng b&#x1ed9; vi&#x1ec7;c ghi v&#xe0;o bi&#x1ebf;n &#x111;&#xf3;."/>
<node CREATED="1544761201595" ID="ID_1001149957" MODIFIED="1544761274256" TEXT="Vi&#x1ebf;t 1 ch&#x1b0;&#x1a1;ng tr&#xec;nh C t&#x1ea1;o ra 2 thread, 2 thread &#x111;&#x1ec1;u ghi v&#xe0;o chung 1 file, s&#x1eed; d&#x1ee5;ng mutex &#x111;&#x1ec3; b&#x1ea3;o v&#x1ec7; file, n&#xea;n s&#x1eed; d&#x1ee5;ng wrapper function thay cho h&#xe0;m ghi file th&#xf4;ng th&#x1b0;&#x1edd;ng."/>
</node>
<node CREATED="1544760731134" ID="ID_971597227" MODIFIED="1544760737179" POSITION="right" TEXT="Semaphore">
<node CREATED="1544760754878" ID="ID_1335761857" MODIFIED="1544760758978" TEXT="C&#xf3; 1 ho&#x1eb7;c nhi&#x1ec1;u kh&#xf3;a"/>
<node CREATED="1544760760398" ID="ID_221615909" MODIFIED="1544760778659" TEXT="Trong m&#x1ed9;t th&#x1edd;i &#x111;i&#x1ec3;m c&#xf3; th&#x1ec3; c&#xf3; 1 ho&#x1eb7;c nhi&#x1ec1;u thread c&#xf3; &#x111;&#x1b0;&#x1ee3;c kh&#xf3;a"/>
<node CREATED="1544760785246" ID="ID_1338321590" MODIFIED="1544760787562" TEXT="Minh h&#x1ecd;a"/>
<node CREATED="1544760918974" ID="ID_695069311" MODIFIED="1544760924721" TEXT="wrapper function"/>
</node>
<node CREATED="1544761320125" ID="ID_946810607" MODIFIED="1544761322699" POSITION="right" TEXT="Th&#x1ef1;c h&#xe0;nh">
<node CREATED="1544761330103" ID="ID_1161365622" MODIFIED="1544761520103" TEXT="Vi&#x1ebf;t 1 ch&#x1b0;&#x1a1;ng tr&#xec;nh C t&#x1ea1;o ra 3 thread, c&#xe1;c thread l&#x1ea7;n l&#x1b0;&#x1ee3;t &#x111;&#x1b0;&#x1ee3;c t&#x103;ng 1 bi&#x1ebf;n chung th&#xea;m m&#x1ed9;t &#x111;&#x1a1;n v&#x1ecb; v&#xe0; ghi gi&#xe1; tr&#x1ecb; m&#x1edb;i v&#xe0;o 1 trong 2 file output. S&#x1eed; d&#x1ee5;ng semaphore &#x111;&#x1ec3; &#x111;&#x1ed3;ng b&#x1ed9; vi&#x1ec7;c ghi v&#xe0;o 2 file"/>
<node CREATED="1544761611128" ID="ID_797612262" MODIFIED="1544761656422" TEXT="T&#x1ea1;o 10 ma tr&#x1ead;n k&#xed;ch th&#x1b0;&#x1edb;c 200x200. Nh&#xe2;n 10 ma tr&#x1ead;n &#x111;&#xf3; v&#x1edb;i nhau s&#x1eed; d&#x1ee5;ng multi thread."/>
</node>
</node>
</map>
