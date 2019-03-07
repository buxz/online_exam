package com.buxz.online_exam.thread;

import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.IOException;
import java.util.Date;

import javax.websocket.Session;


/**
 * The beauty of the code
 * 
 * @author Administrator
 *
 *	Éè¼ÆË¼Ïë
 *
 *1¡¢Ã¿¸ö´ðÌâÕß£¬²»ÊÇÍ¬Ò»Ê±¼ä´ðÌâ£¬ÎÞ·¨Í³Ò»¼ÆÊ±£¬ÕâÀïÎÒÃÇÐèÒªÊ¹ÓÃ¶àÏß³ÌÎªÃ¿¸ö´ðÌâÕß¿ª±ÙÒ»¸öÏß³Ì¼ÆÊ±¡£
 *
 *2¡¢¸ÃÀà¹¹ÔìÊ±£¬°ÑWebSocket Session´«µÝ½øÀ´£¬¼ÆÊ±½áÊøÎÒÃÇ»áÊ¹ÓÃËü¸ø¿Í»§»ú·¢ËÍ×´Ì¬
 *
 */
public class Timekeeping implements Runnable {

	private Session session;
	
	//Ä¿±êÊ±¼ä
	private Long target;
	
	private Long time;
	
	//¹¹Ôì
	public Timekeeping(Long target,Session session){
		this.session = session;
		this.target = target;
	}
	
	@Override
	public void run() {
		try {
			//·¢ËÍÏûÏ¢¸ø¿Í»§¶Ë£¬¸æËß¿Í»§¶Ëµ±Ç°Ê±¼ä£¬ÓëÄ¿±êÊ±¼ä£¬ÕâÀïÎÒÃÇ²»Ê¹ÓÃ¿Í»§»ú±¾µØÊ±¼ä£¬¼ÆÊ±±ê×¼°´ÕÕ·þÎñÆ÷¶ËÊ±¼ä
			String resultStart = "{\"state\":\"start\"}";
			this.session.getBasicRemote().sendText(resultStart);
			while (true) {
				
				Thread.sleep(500);
				
				Date current = new Date();
				Long currentLong = current.getTime();
				ObjectMapper om = new ObjectMapper();
				
				if (currentLong >= this.target){
					//Map<String,String> resultMap = new HashMap<>();
					//resultMap.put("state", "online");
					//resultMap.put("message", "end");
					//om.writeValueAsString(resultMap);
					//¸øJS·µ»Ø½áÊø×´Ì¬
					if (session.isOpen()){
						String resultEnd = "{\"state\":\"end\",\"message:\":\"end\"}";
						session.getBasicRemote().sendText(resultEnd);
						//Ìø³öÑ­»·½áÊøÏß³Ì
					}
					break;	
				}else{
					if (session.isOpen()){
						String resultEnd = "{\"state\":\"time\",\"endtime\":"+this.target+",\"currentime\":"+currentLong+"}";
						session.getBasicRemote().sendText(resultEnd);
					}else {
						break;	
					}
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

    public void sendMessage(String message) throws IOException{
        //Ïò¿Í»§»ú·¢ËÍÏûÏ¢£¬Èç¹û¼ÆÊ±Íê±Ï»áÏò¿Í»§»ú·¢ËÍÒ»¸ö×´Ì¬£¬¸æËß¿Í»§»úÊ±¼äµ½ÁË£¬ÐèÒªÌá½»ÊÔ¾í¡£
    	this.session.getBasicRemote().sendText(message);
        
    }
	
}
