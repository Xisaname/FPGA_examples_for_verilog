代码主要解决以下任务


任务目的：
1、熟悉FIFO（非AXI）的功能和使用
2、熟悉BRAM（非AXI）的功能和使用
3、用BRAM实现输入输出位宽不同的FIFO，达到数据“小带宽快速输入、大带宽慢速输出”和“大带宽快速输入、小带宽慢速输出”的效果。
4、了解ILA，思考用BRAM实现类似ILA的波形记录功能。


任务需求描述：
在Vivado仿真环境完成下列任务

1.
编写Generator IP
功能含义描述：Generator IP每隔一段时间产生1个32位无符号数序列，由实例化IP通过接口按8bit位宽读取。
接口如下：
output Flag  2bit  //表示数据类型
output Data  8bit  //数据
output Valid 1bit  //表示数据有效
input  CLK   1bit
input  RST   1bit
input  EN    1bit  //请求数据

EN拉高表示向Generator请求数据
Valid拉高表示Generator输出的Data和Flag有效
Data为随机值（任意值）
Flag为数据类型
 Valid=1，Flag=0表示数据帧开始，此时Data为该数据帧的第1个有效数据。
 Valid=1，Flag=1表示数据，此时Data为该数据帧的有效数据。
 Valid=1，Flag=2表示数据帧结束，此时Data为该数据帧的1字节校验数据，校验计算方法：16个字节数据之和（不计溢出）。

每帧数据长度为16字节（代码应支持长度可变）
每2帧之间的等待时间为17个clk（与长度相同）（代码应支持长度可变）
具有帧内随机延时功能，延时≤100个clk，如：输出第3字节数据后valid拉低Data为任意值，50个clk之后valid拉高同时Data输出第4个字节和后续数据；
要求在输出接口前，使用FIFO缓存Data和Flag数据，若FIFO数据没有被用户及时读出，则允许造成数据丢失;
FIFO输入输出均为8bit，FIFO使用空间不得超过帧长度的2倍；

要求：
EN后Valid拉高时机不强制要求；
EN拉低后，Valid应尽快拉低；
开机需要RST。

2.
编写Analyze IP：
根据Generator IP Flag输出的内容解析数据帧，完成数据帧接受、丢弃行为；
将BRAM设计为至少2个帧缓冲区（缓冲区应位于同1BRAM中的不同地址），当Generator IP Data接口输出的数据帧正确 且 完全写入BRAM中缓冲区时，通知Calc IP对该缓冲区中数据进行处理；
当完成缓冲区(n)数据就绪并通知Calc IP后，应切换为缓冲区(n+1)继续接收新数据（乒乓操作）。

要求：
BRAM使用空间不得超过帧长度的3倍；
不得跨IP完成其他IP的功能；
利用BRAM完成Analyze IP和Calc IP的位宽转换，但要注意拼接正确；
要努力确保即时接收Generator输出的数据，避免丢失；
应正确处理Generator输出数据间断的情况；
要考虑Generator数据一旦丢失，起始标志或结束标志缺失导致的逻辑问题，应该丢弃不完整的数据帧；
开机需要RST。


3.
编写 Calc IP：
根据Analyze IP输出的通知信号和缓冲区地址，通过Analyze IP提供的BRAM接口访问缓冲区中就绪的数据；
需要按32bit无符号数类型计算整帧数据的整数平均值，并输出给TOP层。

要求：
在Analyze IP和Calc IP使用相同CLK情况下，无需考虑Calc IP的计算速度。
开机需要RST。


*********************************************
附加任务
关于BRAM间歇性读数据没有想出较好的示例任务，请大家思考BRAM的数据读取如果EN是间歇性的，地址是随机变化或随条件变化的，那么在顿挫间隔处是否会发生无效数据输出的问题。这种时序问题不应交给状态机处理，应采用寄存器延时策略，将逻辑变量凑到同一个时钟下统一处理。BRAM读延时输出的现象不仅BRAM如此，在FPGA应用中非常常见，所以应将其梳理为统一的处理方法，不应将固定延时与逻辑混合处理。
阅读BRAM手册，查看与延时有关的配置选项还有什么，同样思考在间歇性随机读数据期间应如何处理。
阅读FIFO手册，理解First Fall Through功能，思考该参数开关对间歇性读数据的时序逻辑影响。
