<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1555644548138" ID="ID_1108963658" MODIFIED="1555654743724" TEXT="CAN driver">
<node CREATED="1555654658761" ID="ID_1202447222" MODIFIED="1555654662461" POSITION="right" TEXT="Agenda">
<node CREATED="1555654674906" ID="ID_1941740978" MODIFIED="1555654676192" TEXT="CAN network"/>
<node CREATED="1555654690268" ID="ID_293051538" MODIFIED="1555654690651" TEXT="The CAN hardware module"/>
<node CREATED="1555654698717" ID="ID_364203166" MODIFIED="1555654700137" TEXT="CAN protocol in user-space"/>
<node CREATED="1555654704462" ID="ID_921697219" MODIFIED="1555654704985" TEXT="CAN driver"/>
</node>
<node CREATED="1555644921232" ID="ID_1771684744" MODIFIED="1555644924866" POSITION="right" TEXT="Introduction">
<node CREATED="1555644927469" ID="ID_521532180" MODIFIED="1555645067875" TEXT="&#x110;&#x1b0;&#x1ee3;c develop b&#x1edf;i BOSH. C&#xf3; &#x111;&#x1eb7;c &#x111;i&#x1ec3;m d&#x1ec5; implement v&#x1ec1; hardware v&#xe0; software, truy&#x1ec1;n &#x1ed5;n &#x111;&#x1ecb;nh, t&#x1ed1;c &#x111;&#x1ed9; th&#x1ea5;p, kho&#x1ea3;ng c&#xe1;ch ng&#x1eaf;n. Do &#x111;&#xf3; ph&#xf9; h&#x1ee3;p cho vi&#x1ec7;c truy&#x1ec1;n t&#xed;n hi&#x1ec7;u gi&#x1eef;a c&#xe1;c thi&#x1ebf;t b&#x1ecb; trong &#xf4; t&#xf4;."/>
</node>
<node CREATED="1555645230845" ID="ID_1664565804" MODIFIED="1555645443778" POSITION="right" TEXT="CAN network">
<node CREATED="1555645241725" ID="ID_80148676" MODIFIED="1555645418906" TEXT="K&#x1ebf;t n&#x1ed1;i ngang h&#xe0;ng, m&#x1ed7;i thi&#x1ebf;t b&#x1ecb; trong m&#x1ea1;ng &#x111;&#xf3;ng vai tr&#xf2; l&#xe0; m&#x1ed9;t master. C&#xe1;c thi&#x1ebf;t b&#x1ecb; t&#x1ef1; g&#x1eed;i v&#xe0; nh&#x1ead;n d&#x1eef; li&#x1ec7;u m&#xe0; kh&#xf4;ng ph&#x1ea3;i ch&#x1ecb;u s&#x1ef1; qu&#x1ea3;n l&#xfd;. M&#x1ed7;i node trong m&#x1ea1;ng s&#x1ebd; c&#xf3; m&#x1ed9;t ID, b&#x1ea3;n tin &#x111;&#x1b0;&#x1ee3;c g&#x1eed;i &#x111;i s&#x1ebd; k&#xe8;m ID v&#xe0; &#x111;&#x1b0;&#x1ee3;c g&#x1eed;i t&#x1edb;i t&#x1ea5;t c&#x1ea3; c&#xe1;c node. C&#xe1;c node s&#x1ebd; t&#x1ef1; quy&#x1ebf;t &#x111;&#x1ecb;nh c&#xf3; &#x111;&#x1ecd;c b&#x1ea3;n tin &#x111;&#xf3; hay kh&#xf4;ng."/>
</node>
<node CREATED="1555645454069" ID="ID_1112823025" MODIFIED="1555646009170" POSITION="right" TEXT="Standard CAN frame">
<node CREATED="1555645498046" ID="ID_810038693" MODIFIED="1555645571514" TEXT="SOF, Identifier, RTR, IDE, r0, DLC, Data, CRC, ACK, EOF, IFS"/>
<node CREATED="1555645720101" ID="ID_1899501133" MODIFIED="1555645898866" TEXT="Extended CAN, Mcan, CAN FD, flex CAN"/>
</node>
<node CREATED="1555646010172" ID="ID_119720601" MODIFIED="1555646030018" POSITION="right" TEXT="Message types">
<node CREATED="1555646032045" ID="ID_1900273722" MODIFIED="1555646040512" TEXT="The data frame"/>
<node CREATED="1555646040821" ID="ID_1180391697" MODIFIED="1555646045306" TEXT="The remote frame"/>
<node CREATED="1555646050636" ID="ID_366143934" MODIFIED="1555646056482" TEXT="The overload frame"/>
<node CREATED="1555646059109" ID="ID_1764504791" MODIFIED="1555646062641" TEXT="Valid frame"/>
<node CREATED="1555646081707" ID="ID_859069226" MODIFIED="1555646082248" TEXT="Error Checking and Fault Confinement"/>
</node>
<node CREATED="1555646272131" ID="ID_860885411" MODIFIED="1555646277936" POSITION="right" TEXT="The CAN bus"/>
<node CREATED="1555646363749" ID="ID_140378874" MODIFIED="1555646369909" POSITION="right" TEXT="The CAN hardware module"/>
<node CREATED="1555654208615" ID="ID_487134437" MODIFIED="1555654219283" POSITION="right" TEXT="Transmit process">
<node CREATED="1555654250167" ID="ID_1938769501" MODIFIED="1555654285450" TEXT="Write CAN frame to transmit maile box"/>
<node CREATED="1555654287543" ID="ID_1569121387" MODIFIED="1555654312188" TEXT="Set mail box status is ready to transmit"/>
<node CREATED="1555654454418" ID="ID_1469265692" MODIFIED="1555654474578" TEXT="Setting interrupt when transmit success"/>
</node>
<node CREATED="1555654378351" ID="ID_910232068" MODIFIED="1555654391821" POSITION="right" TEXT="Receive process">
<node CREATED="1555654403087" ID="ID_533945293" MODIFIED="1555654408252" TEXT="Write ID word"/>
<node CREATED="1555654413736" ID="ID_715970675" MODIFIED="1555654431055" TEXT="Active received mail box"/>
<node CREATED="1555654479679" ID="ID_1046876016" MODIFIED="1555654520056" TEXT="Raise received packet interrupt"/>
<node CREATED="1555654546182" ID="ID_1968961177" MODIFIED="1555654571284" TEXT="Send ack"/>
</node>
<node CREATED="1555654588226" ID="ID_1419569217" MODIFIED="1555654614377" POSITION="right" TEXT="CAN protocol in user-space">
<node CREATED="1555654615148" ID="ID_755231963" MODIFIED="1555654620394" TEXT="CAN interface"/>
<node CREATED="1555654620773" ID="ID_1310451949" MODIFIED="1555654645068" TEXT="Read, write CAN packet with socket"/>
</node>
<node CREATED="1555654649104" ID="ID_634374521" MODIFIED="1555654653988" POSITION="right" TEXT="CAN driver"/>
</node>
</map>
