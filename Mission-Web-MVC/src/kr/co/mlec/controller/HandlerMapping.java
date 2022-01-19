package kr.co.mlec.controller;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

public class HandlerMapping {

	private Map<String, Controller> mappings = null;

	public HandlerMapping(String propLoc) {
		mappings = new HashMap<>();

		Properties prop = new Properties();
		try {
			InputStream is = new FileInputStream(propLoc);
			//InputStream is = new FileInputStream("D:\\web-workspace\\Mission-Web-MVC\\bean.properties");
			prop.load(is);
			
			Set<Object> keys = prop.keySet();
			for(Object key : keys) {
				//object형이니까... 형변환
				String className = prop.getProperty(key.toString());
				System.out.println(key + " : " +className);
				
				Class<?> clz = Class.forName(className);
				mappings.put(key.toString(),(Controller)clz.newInstance() );
				
				//mappings.put("/board/list.do", new BoardListController());
				//mappings.put("/board/writeForm.do", new BoardWriteFormController());
			}

			/*
			 * System.out.println(prop.getProperty("/board/list.do"));
			 * System.out.println(prop.getProperty("/board/writeForm.do"));
			 */

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public Controller getController(String uri) {

		return mappings.get(uri);
	}

	/*
	 * //모든 비즈니스 수행 switch(uri) { case "/board/list.do" : control =new
	 * BoardListController(); break; case "/board/writeForm.do" : control =new
	 * BoardWriteFormController(); break; }
	 */
	
	
	//bean~ 이름을 알아와서  객체만들어
	
	
	public static void main(String[] args) throws Exception {
		/*
		 * java.util.Random r = new java.util.Random(); int random = r.nextInt(100);
		 * System.out.println("추출된 난수 : " + random);
		 */
		//동적으로 클래스 만들어서 ..
		/*
		 * Class<?> clz = Class.forName("java.util.Random"); java.util.Random obj =
		 * (java.util.Random)clz.newInstance(); int random = obj.nextInt(100);
		 * System.out.println("추출된 난수 : " + random);
		 */
		//BoardListController obj = new BoardListController(); 를 클래스 이름알아서 동적으로 한거
		Class<?> clz = Class.forName("kr.co.mlec.controller.BoardListController");
		
		BoardListController obj = (BoardListController)clz.newInstance();
		//System.out.println(obj.handleRequest(request, response));
		
	}
	
	
	
}
