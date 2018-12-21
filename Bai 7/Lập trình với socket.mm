<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1545363020903" ID="ID_623331877" MODIFIED="1545363035218" TEXT="L&#x1ead;p tr&#xec;nh v&#x1edb;i socket">
<node CREATED="1545363042591" ID="ID_846118886" MODIFIED="1545363044339" POSITION="right" TEXT="Agenda"/>
<node CREATED="1545366554480" ID="ID_566849575" MODIFIED="1545366565302" POSITION="right" TEXT="Socket overview"/>
<node CREATED="1545366574706" ID="ID_1000190474" MODIFIED="1545366672225" POSITION="right" TEXT="IPC with socket"/>
<node CREATED="1545366677959" ID="ID_1716639901" MODIFIED="1545366705809" POSITION="right" TEXT="Create a socket">
<node CREATED="1545370232425" ID="ID_770052981" MODIFIED="1545370233888" TEXT="#include &lt;sys/socket.h&gt;"/>
<node CREATED="1545370245571" ID="ID_173321234" MODIFIED="1545370246607" TEXT="int socket(int domain, int type, int protocol);"/>
</node>
<node CREATED="1545366706788" ID="ID_457218390" MODIFIED="1545371228616" POSITION="right" TEXT="Attach a socket to port">
<node CREATED="1545370935498" ID="ID_388296745" MODIFIED="1545370936470" TEXT="struct sockaddr_in"/>
<node CREATED="1545370942893" ID="ID_697516438" MODIFIED="1545371056486" TEXT="const char *inet_ntop(int domain, const void *restrict addr, char *restrict str, socklen_t size);"/>
<node CREATED="1545371242122" ID="ID_1068771637" MODIFIED="1545371242574" TEXT="int bind(int sockfd, const struct sockaddr *addr, socklen_t len);"/>
</node>
<node CREATED="1545371653738" ID="ID_1436794791" MODIFIED="1545371661503" POSITION="right" TEXT="L&#x1eaf;ng nghe k&#x1ebf;t n&#x1ed1;i t&#x1eeb; port">
<node CREATED="1545371662385" ID="ID_399798585" MODIFIED="1545371663206" TEXT="int listen(int sockfd, int backlog);"/>
</node>
<node CREATED="1545371694417" ID="ID_262429175" MODIFIED="1545371700534" POSITION="right" TEXT="Ch&#x1ea5;p nh&#x1ead;n k&#x1ebf;t n&#x1ed1;i">
<node CREATED="1545371710065" ID="ID_68596043" MODIFIED="1545371710846" TEXT="int accept(int sockfd, struct sockaddr *restrict addr, socklen_t *restrict len);"/>
</node>
<node CREATED="1545371494225" ID="ID_1196382997" MODIFIED="1545371517591" POSITION="right" TEXT="Thi&#x1ebf;t l&#x1ead;p k&#x1ebf;t n&#x1ed1;i">
<node CREATED="1545371593762" ID="ID_812832941" MODIFIED="1545371594702" TEXT="int connect(int sockfd, const struct sockaddr *addr, socklen_t len);"/>
</node>
<node CREATED="1545371745835" ID="ID_563539350" MODIFIED="1545371756302" POSITION="right" TEXT="Truy&#x1ec1;n nh&#x1ead;n d&#x1eef; li&#x1ec7;u">
<node CREATED="1545371766785" ID="ID_1670015355" MODIFIED="1545371767273" TEXT="ssize_t send(int sockfd, const void *buf, size_t nbytes, int flags);"/>
<node CREATED="1545371827499" ID="ID_1697201284" MODIFIED="1545371828151" TEXT="ssize_t read(int fd, void *buf, size_t count);"/>
</node>
<node CREATED="1545371856250" ID="ID_1625488844" MODIFIED="1545371885599" POSITION="right" TEXT="S&#x1a1; &#x111;&#x1ed3; setup socket tr&#xea;n sever v&#xe0; client"/>
<node CREATED="1545371964660" ID="ID_675834976" MODIFIED="1545371973096" POSITION="right" TEXT="Th&#x1ef1;c h&#xe0;nh">
<node CREATED="1545371974028" ID="ID_921784306" MODIFIED="1545371992447" TEXT="Vi&#x1ebf;t 1 ch&#x1b0;&#x1a1;ng tr&#xec;nh chat theo m&#xf4; h&#xec;nh client server. C&#x1ea3; 2 ch&#x1ea1;y c&#xf9;ng tr&#xea;n 1 m&#xe1;y t&#xed;nh"/>
</node>
</node>
</map>
