package kr.ac.kopo.sms.service;

import java.util.HashMap;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Service
public class certificationService {

	public static void certifiedPhoneNumber(String phoneNumber, String cerNum) {
		System.out.println("서비스");
		System.out.println("서비스 폰넘버 :" + phoneNumber );
		System.out.println("인증번호 : " + cerNum);

		String api_key = "NCSW6RU4SQNS5VIQ"; // 본인의 api key
		String api_secret = "3RHUZTW7LJQIII68TPKRT5PP5LBWB4WU"; // 본인의 api secret

		Message coolsms = new Message(api_key, api_secret);
		

		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", phoneNumber.replaceAll("\"", "")); // 수신전화번호
		params.put("from", "01029950328");
		params.put("text", "첫번째 보내는 테스트 문자 메시지!");
		params.put("type", "SMS");
		params.put("app_version", "test app 1.2"); // application name and version

		System.out.println(params);
		
		try {
			JSONObject obj = (JSONObject)coolsms.send(params);
			System.out.println(obj.toString());
		} catch (CoolsmsException e) {
			System.out.println(e.getMessage());
			System.out.println(e.getCode());
		}
	}
}