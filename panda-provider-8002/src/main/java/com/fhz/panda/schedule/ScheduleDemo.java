package com.fhz.panda.schedule;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

/**
 * 定时任务测试类
 * @author fenghongzhag
 * @date  2018年11月22日
 */
@Component
public class ScheduleDemo {
	
	
	@Scheduled(cron = "0 */59 * * * ?")
	public void time() {
		System.out.println("一个小时了!!! 可以看看远方了.....");
	}
}
