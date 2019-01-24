<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1547783668842" ID="ID_1951953540" MODIFIED="1547783683054" TEXT="Character device driver">
<node CREATED="1547784042394" ID="ID_596148004" MODIFIED="1547784045288" POSITION="right" TEXT="Agenda">
<node CREATED="1547788418927" ID="ID_1492117242" MODIFIED="1547788422995" TEXT="Objective"/>
</node>
<node CREATED="1547784147971" ID="ID_1809718855" MODIFIED="1547784175040" POSITION="right" TEXT="Driver main functions">
<node CREATED="1547784175955" ID="ID_1973225761" MODIFIED="1547784211922" TEXT="Service user space"/>
<node CREATED="1547784197651" ID="ID_1712692050" MODIFIED="1547784230287" TEXT="Call service from kernel space"/>
<node CREATED="1547788342943" ID="ID_3415012" MODIFIED="1547788358699" TEXT="Working directly with hardware"/>
</node>
<node CREATED="1547784045555" ID="ID_1793413544" MODIFIED="1547784162648" POSITION="right" TEXT="Character device">
<node CREATED="1547784070947" ID="ID_1717242491" MODIFIED="1547784087696" TEXT="C&#xe2;y ph&#xe2;n c&#x1ea5;p device"/>
<node CREATED="1547784088667" ID="ID_1147002239" MODIFIED="1547784098024" TEXT="Character device"/>
<node CREATED="1547784098515" ID="ID_1594241421" MODIFIED="1547784101745" TEXT="Block device"/>
<node CREATED="1547784109204" ID="ID_463030062" MODIFIED="1547784113264" TEXT="Network device"/>
</node>
<node CREATED="1547788415303" ID="ID_1926152136" MODIFIED="1547788628220" POSITION="right" TEXT="Device file">
<node CREATED="1547788631446" ID="ID_95481512" MODIFIED="1547788658492" TEXT="All device file place in /dev folder"/>
<node CREATED="1547788587045" ID="ID_1191591096" MODIFIED="1547788591772" TEXT="Major number"/>
<node CREATED="1547788592406" ID="ID_1575291240" MODIFIED="1547788595147" TEXT="Minor number"/>
<node CREATED="1547788687958" ID="ID_33517479" MODIFIED="1547788694004" TEXT="Create a device file">
<node CREATED="1547788695047" ID="ID_652963401" MODIFIED="1547788697684" TEXT="By udev"/>
<node CREATED="1547788699327" ID="ID_1773066907" MODIFIED="1547788704523" TEXT="By mknod command"/>
<node CREATED="1547788707495" ID="ID_374216264" MODIFIED="1547788711659" TEXT="By device driver"/>
</node>
</node>
<node CREATED="1547788737167" ID="ID_246476704" MODIFIED="1547788742515" POSITION="right" TEXT="Device operation">
<node CREATED="1547788790222" ID="ID_1211741001" MODIFIED="1547788800691" TEXT="open"/>
<node CREATED="1547788802551" ID="ID_656698913" MODIFIED="1547788804900" TEXT="close"/>
<node CREATED="1547788805550" ID="ID_723403879" MODIFIED="1547788807435" TEXT="read"/>
<node CREATED="1547788808039" ID="ID_74190186" MODIFIED="1547788811723" TEXT="write"/>
<node CREATED="1547788812413" ID="ID_1238175439" MODIFIED="1547788814833" TEXT="ioctl"/>
</node>
<node CREATED="1547788837783" ID="ID_1235461969" MODIFIED="1547788862180" POSITION="right" TEXT="Implement file operation in driver">
<node CREATED="1547788884102" ID="ID_1383328089" MODIFIED="1547788885331" TEXT="static int dev_open(struct inode *inodep, struct file *filep)"/>
<node CREATED="1547788918343" ID="ID_1606565319" MODIFIED="1547788918746" TEXT="static int dev_close(struct inode *inodep, struct file *filep)"/>
<node CREATED="1547788919175" ID="ID_1726738194" MODIFIED="1547788929435" TEXT="static ssize_t dev_read(struct file*filep, char __user *buf, size_t len, loff_t *offset)"/>
<node CREATED="1547788937173" ID="ID_1731300204" MODIFIED="1547788937731" TEXT="static ssize_t dev_write(struct file*filep, const char __user *buf, size_t len, loff_t *offset)"/>
<node CREATED="1547790036503" ID="ID_1753810396" MODIFIED="1547790085899" TEXT="unsigned long copy_from_user(void *to, const void __user *from, unsigned long n);"/>
<node CREATED="1547790128031" ID="ID_775873232" MODIFIED="1547790155947" TEXT="unsigned long copy_to_user(void __user *to, const void *from, unsigned long n);"/>
</node>
<node CREATED="1547788944663" ID="ID_628097914" MODIFIED="1547788955211" POSITION="right" TEXT="Register file operation with kernel"/>
<node CREATED="1547789053581" ID="ID_1525738021" MODIFIED="1547789093635" POSITION="right" TEXT="Basic steps of character driver">
<node CREATED="1547789102311" ID="ID_1394343665" MODIFIED="1547789151347" TEXT="Define file operation"/>
<node CREATED="1547789153815" ID="ID_1662109299" MODIFIED="1547789160947" TEXT="Define other interface"/>
<node CREATED="1547789189183" ID="ID_1209092062" MODIFIED="1547789208659" TEXT="Initialize private resource"/>
<node CREATED="1547789502415" ID="ID_407460724" MODIFIED="1547789502811" TEXT="Create device file"/>
<node CREATED="1547789170191" ID="ID_1912524177" MODIFIED="1547789183363" TEXT="Register file operation and other interface"/>
</node>
<node CREATED="1547789163199" ID="ID_209030544" MODIFIED="1547789498958" POSITION="right" TEXT="Create device file">
<node CREATED="1547789255775" ID="ID_587201980" MODIFIED="1547789256401" TEXT="void cdev_init (&#x9;struct cdev * cdev,  &#x9;const struct file_operations * fops); "/>
<node CREATED="1547789300185" ID="ID_1284852533" MODIFIED="1547789300763" TEXT="int cdev_add (&#x9;struct cdev * p, dev_t dev, unsigned count);"/>
<node CREATED="1547789362799" ID="ID_656956311" MODIFIED="1547789363187" TEXT="struct class *class_create(struct module *owner, const char *name);"/>
<node CREATED="1547789468079" ID="ID_1091454072" MODIFIED="1547789468491" TEXT="struct device *device_create(struct class *class, struct device *parent, dev_t devt, const char *fmt,   );"/>
</node>
<node CREATED="1547789508862" ID="ID_1381596338" MODIFIED="1547789514467" POSITION="right" TEXT="Destroy device file">
<node CREATED="1547789729575" ID="ID_929358216" MODIFIED="1547789730747" TEXT="void cdev_del(struct cdev *);"/>
<node CREATED="1547789613134" ID="ID_1434034548" MODIFIED="1547789613874" TEXT="void device_destroy(struct class *class, dev_t devt);"/>
<node CREATED="1547789645879" ID="ID_1587191903" MODIFIED="1547789646243" TEXT="void class_destroy (&#x9;struct class *  &#x9;cls); "/>
<node CREATED="1547789690710" ID="ID_205469209" MODIFIED="1547789691283" TEXT="void unregister_chrdev_region(dev_t from, unsigned count);"/>
</node>
<node CREATED="1547789766895" ID="ID_487813066" MODIFIED="1547789781147" POSITION="right" TEXT="Compare create and destroy a device"/>
<node CREATED="1547790169623" ID="ID_915409097" MODIFIED="1547790173387" POSITION="right" TEXT="Example code"/>
<node CREATED="1547790183319" ID="ID_435242177" MODIFIED="1547790185698" POSITION="right" TEXT="Practice"/>
<node CREATED="1547789844903" ID="ID_1188200645" MODIFIED="1547789848835" POSITION="right" TEXT="Ioctl">
<node CREATED="1547789897839" ID="ID_421496573" MODIFIED="1547789900979" TEXT="Driver code">
<node CREATED="1547789901422" ID="ID_1480868069" MODIFIED="1547789902099" TEXT="static long dev_ioctl(struct file *filep, unsigned int cmd, unsigned long arg)"/>
</node>
<node CREATED="1547789904965" ID="ID_311286568" MODIFIED="1547789915131" TEXT="User space code">
<node CREATED="1547789949367" ID="ID_1279228143" MODIFIED="1547789950035" TEXT="#include &lt;sys/ioctl.h&gt;"/>
<node CREATED="1547789950774" ID="ID_514226516" MODIFIED="1547789992523" TEXT="int ioctl(int fd, unsigned long request, ...);"/>
</node>
</node>
<node CREATED="1547790176182" ID="ID_1982840394" MODIFIED="1547790179851" POSITION="right" TEXT="Example code"/>
<node CREATED="1547790188830" ID="ID_288663968" MODIFIED="1547790192931" POSITION="right" TEXT="Home work"/>
</node>
</map>
