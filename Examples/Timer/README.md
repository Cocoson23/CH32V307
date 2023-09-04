# Timer  
使用Timer实现每0.5s LED 转换电平
## Key Points  
1. 配置基本定时器(BCTM) Timer6
   - 设置预分频值(prescaler) 14400 - 1
     即让芯片计数 144MHz / 14400 = 10000次/s
   - 设置周期(period) 5000 - 1
     即每5000次计数触发一次更新事件
2. 配置时钟中断
   - 配置中断获取TIM6_IRQn
   - 设置TIM6_IRQn_Handler
3. 初始化时钟及中断
