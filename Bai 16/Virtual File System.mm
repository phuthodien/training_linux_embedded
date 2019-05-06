<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1553225802110" ID="ID_965446798" MODIFIED="1553226132631" TEXT="Virtual File System">
<node CREATED="1553226155725" ID="ID_1392649993" MODIFIED="1553226157651" POSITION="right" TEXT="Agenda">
<node CREATED="1553239457850" ID="ID_1999849372" MODIFIED="1553239458511" TEXT="Introduction"/>
<node CREATED="1553239468913" ID="ID_107349881" MODIFIED="1553239469382" TEXT="VFS core data structure"/>
<node CREATED="1553239477347" ID="ID_1007557338" MODIFIED="1553239477806" TEXT="Deeply inside file operation"/>
</node>
<node CREATED="1553226158286" ID="ID_692786669" MODIFIED="1553226163587" POSITION="right" TEXT="Introduction">
<node CREATED="1553226272799" ID="ID_475029355" MODIFIED="1553226311404" TEXT="File system l&#xe0; g&#xec;?">
<node CREATED="1553241168754" ID="ID_12358382" MODIFIED="1553241169543" TEXT="L&#xe0; m&#x1ed9;t h&#x1ec7; th&#x1ed1;ng t&#x1ed5; ch&#x1ee9;c, l&#x1b0;u tr&#x1eef; file c&#x1ee7;a ng&#x1b0;&#x1edd;i d&#xf9;ng. ">
<node CREATED="1553226353050" ID="ID_1961076143" MODIFIED="1553226377578" TEXT="FAT, FAT32, NTFS, EXT4"/>
</node>
</node>
<node CREATED="1553226324688" ID="ID_506329268" MODIFIED="1553226348009" TEXT="T&#x1ea1;o ra m&#x1ed9;t h&#x1ec7; th&#x1ed1;ng file system chung cho c&#x1ea3; h&#x1ec7; th&#x1ed1;ng"/>
</node>
<node CREATED="1553226542694" ID="ID_191329002" MODIFIED="1553226567557" POSITION="right" TEXT="C&#xe1;c service cung c&#x1ea5;p b&#x1edf;i VFS">
<node CREATED="1553226611028" ID="ID_768348818" MODIFIED="1553226634040" TEXT="T&#x1ea1;o ra m&#x1ed9;t h&#x1ec7; th&#x1ed1;ng &#x111;&#x1ecd;c/ghi file &#x111;&#x1ed3;ng nh&#x1ea5;t trong c&#x1ea3; h&#x1ec7; th&#x1ed1;ng"/>
<node CREATED="1553226634627" ID="ID_1052898394" MODIFIED="1553226662953" TEXT="Cung c&#x1ea5;p c&#xe1;c Pseudo file system">
<node CREATED="1553226663900" ID="ID_608365681" MODIFIED="1553226676457" TEXT="/proc, /sys, /tmp"/>
</node>
<node CREATED="1553226684675" ID="ID_1811275283" MODIFIED="1553226707152" TEXT="H&#x1ed7; tr&#x1ee3; network file system"/>
</node>
<node CREATED="1553226805715" ID="ID_1452072477" MODIFIED="1553226806776" POSITION="right" TEXT="C&#xe1;c service cung c&#x1ea5;p b&#x1edf;i VFS">
<node CREATED="1553226811996" ID="ID_40672278" MODIFIED="1553226837056" TEXT="Cached meta data c&#x1ee7;a file">
<node CREATED="1553226838707" ID="ID_419967363" MODIFIED="1553226866824" TEXT="d&#xf9;ng l&#x1ec7;nh grep l&#x1ea7;n 2 trong c&#xf9;ng 1 folder s&#x1ebd; nhanh h&#x1a1;n l&#x1ea7;n 1"/>
</node>
<node CREATED="1553226886004" ID="ID_1019081388" MODIFIED="1553226901393" TEXT="M&#x1edf; file, &#x111;&#xf3;ng file"/>
<node CREATED="1553226901988" ID="ID_481175627" MODIFIED="1553226943401" TEXT="Qu&#x1ea3;n l&#xfd; file permission, quy&#x1ec1;n s&#x1edf; h&#x1eef;u."/>
<node CREATED="1553226961197" ID="ID_979862145" MODIFIED="1553226969137" TEXT="source code: "/>
<node CREATED="1553241419723" ID="ID_576228200" MODIFIED="1553241435991" TEXT="Cung c&#x1ea5;p giao di&#x1ec7;n file cho ng&#x1b0;&#x1edd;i d&#xf9;ng"/>
</node>
<node CREATED="1553235244853" ID="ID_1763164301" MODIFIED="1553235255880" POSITION="right" TEXT="VFS core data structure"/>
<node CREATED="1553235260845" ID="ID_487984769" MODIFIED="1553241887085" POSITION="right" TEXT="File object">
<node CREATED="1553236317813" ID="ID_981422125" MODIFIED="1553236355362" TEXT="Ch&#x1ee9;a c&#xe1;c th&#xf4;ng tin &#x111;&#x1ec3; m&#xf4; t&#x1ea3; ph&#x1b0;&#x1a1;ng th&#x1ee9;c &#x111;&#x1ec3; process t&#x1b0;&#x1a1;ng t&#xe1;c v&#x1edb;i file"/>
<node CREATED="1553236355909" ID="ID_78877203" MODIFIED="1553236370497" TEXT="&#x110;&#x1b0;&#x1ee3;c t&#x1ea1;o ra khi process open 1 file"/>
<node CREATED="1553236372989" ID="ID_239661791" MODIFIED="1553236384801" TEXT="Kh&#xf4;ng &#x111;&#x1b0;&#x1ee3;c l&#x1b0;u tr&#x1eef; s&#x1eb5;n trong &#x1ed5; c&#x1ee9;ng"/>
<node CREATED="1553236446643" ID="ID_1388499558" MODIFIED="1553241956816" TEXT="kernel_source/include/linux/fs.h"/>
</node>
<node CREATED="1553237287675" ID="ID_960548868" MODIFIED="1553237293223" POSITION="right" TEXT="Dentry object">
<node CREATED="1553237294602" ID="ID_365185202" MODIFIED="1553237317775" TEXT="M&#xf4; t&#x1ea3; c&#x1ea5;u tr&#xfa;c c&#xe1;c file trong th&#x1b0; m&#x1ee5;c"/>
<node CREATED="1553237319035" ID="ID_1302481311" MODIFIED="1553237342001" TEXT="&#x110;&#x1b0;&#x1ee3;c t&#x1ea1;o ra m&#x1ed9;t lo&#x1ea1;t m&#x1ed7;i khi process m&#x1edf; 1 file">
<node CREATED="1553237344194" ID="ID_1313941466" MODIFIED="1553237401523" TEXT="&#x110;&#x1b0;&#x1ee3;c free khi kh&#xf4;ng c&#xf3; b&#x1ea5;t c&#x1ee9; file n&#xe0;o trong th&#x1ef1;c &#x111;ang &#x111;&#x1b0;&#x1ee3;c m&#x1edf;"/>
</node>
<node CREATED="1553237404050" ID="ID_1492141459" MODIFIED="1553237414336" TEXT="Kh&#xf4;ng l&#x1b0;u tr&#x1eef; s&#x1eb5;n trong &#x1ed5; c&#x1ee9;ng"/>
<node CREATED="1553237526114" ID="ID_1470380459" MODIFIED="1553237529791" TEXT="kernel_source/include/linux/dcache.h"/>
</node>
<node CREATED="1553237670755" ID="ID_1179745596" MODIFIED="1553237674015" POSITION="right" TEXT="Inode object">
<node CREATED="1553237721827" ID="ID_1644014737" MODIFIED="1553237736159" TEXT="Ch&#x1ee9;a c&#xe1;c th&#xf4;ng d&#xf9;ng &#x111;&#x1ec3; qu&#x1ea3;n l&#xfd; file trong OS"/>
<node CREATED="1553237736954" ID="ID_553579507" MODIFIED="1553237771015" TEXT="&#x110;&#x1ecb;nh danh b&#x1edf;i 1 s&#x1ed1; ri&#xea;ng bi&#x1ec7;t trong OS. S&#x1ed1; n&#xe0;y &#x111;&#x1b0;&#x1ee3;c t&#x1ea1;o ra b&#x1edf;i OS v&#xe0; kh&#xf4;ng l&#x1b0;u tr&#xea;n &#x1ed5; c&#x1ee9;ng."/>
<node CREATED="1553237886331" ID="ID_442190716" MODIFIED="1553237891647" TEXT="kernel_source/include/linux/fs.h"/>
</node>
<node CREATED="1553237903393" ID="ID_1649517324" MODIFIED="1553237908551" POSITION="right" TEXT="Super block object">
<node CREATED="1553238053075" ID="ID_554561172" MODIFIED="1553238098543" TEXT="Ch&#x1ee9;a c&#xe1;c th&#xf4;ng tin chung c&#x1ee7;a lo&#x1ea1;i file system &#x111;&#xf3;"/>
<node CREATED="1553238100300" ID="ID_937155795" MODIFIED="1553238106487" TEXT="FAT">
<node CREATED="1553238107243" ID="ID_12169386" MODIFIED="1553238144878" TEXT="Block size 512 byte"/>
<node CREATED="1553238119180" ID="ID_803668543" MODIFIED="1553238140360" TEXT="Max file size 4G"/>
<node CREATED="1553238152305" ID="ID_1887471182" MODIFIED="1553238185597" TEXT="Kh&#xf4;ng h&#x1ed7; tr&#x1ee3; recover data khi ghi file b&#x1ecb; l&#x1ed7;i"/>
</node>
</node>
<node CREATED="1553242474346" ID="ID_103661335" MODIFIED="1553242502231" POSITION="right" TEXT="Relationship between VFS core data"/>
<node CREATED="1553238327155" ID="ID_843172232" MODIFIED="1553238413143" POSITION="right" TEXT="Deeply inside file operation"/>
<node CREATED="1553238415386" ID="ID_1703858537" MODIFIED="1553238432647" POSITION="right" TEXT="File operation flow"/>
</node>
</map>
