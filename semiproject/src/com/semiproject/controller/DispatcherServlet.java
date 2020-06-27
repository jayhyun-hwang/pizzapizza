package com.semiproject.controller;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/DispatcherServlet")
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Properties props;
	@Override
	public void init(ServletConfig config) throws ServletException {
		//(맵핑파일을 저장한다. - 이후 참고하여 담당 클래스를 찾음.)
		
		//최초 요청 시 한번만 실행
		
		//매핑파일을 읽어서 Properties 컬렉션에 저장
		String configFile=config.getInitParameter("configFile");
		System.out.println("configFile= "+configFile);
		//=> <param-value>/config/CommandPro.properties</param-value>
		
		String realConfigFile=config.getServletContext().getRealPath(configFile);
		System.out.println("실제 물리적 경로: "+realConfigFile);
		
		FileInputStream fis = null;
		
		try {
			//2 Properties 컬렉션에 저장하기
			fis=new FileInputStream(realConfigFile);
			props = new Properties();
			props.load(fis);
			System.out.println("컬렉션에 저장됨!");
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}finally {
			if(fis!=null)
				try {
					fis.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
		}
		
		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestProcess(request, response);
	}
	
	private void requestProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		//파라미터를 인코딩하고 읽어서 담당 클래스에 넘겨주고 리턴값을 받아서 포워딩함
		
		//요청이 들어올 때 마다 호출됨
		//매핑정보(Properties컬렉션)를 참조해서 담당 클래스(명령어 처리 클래스)를 구한 수
		//해당 클래스의 메서드 호출
		//메서드로부터 뷰페이지를 리턴받아서 포워딩
		
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		
		//1. 요청 URI로부터 명령어 추출
		String uri=request.getRequestURI();
		System.out.println("uri= "+uri);
		//=> /mymvc/tips/book.do
		
		String contextPath=request.getContextPath();
		System.out.println("contextPath= "+contextPath);	//=> /mymvc
		
		String cmd=uri;
		if(uri.indexOf(contextPath)!=-1) {
			cmd=uri.substring(contextPath.length()); //=>/tips/book.do
		}
		System.out.println("cmd= "+cmd);
		
		//2. 명령어에 해당하는 명령어처리 클래스 구하기
		String cmdVal=props.getProperty(cmd);	//BookController2
		System.out.println("명령어 처리 클래스 cmdVal= "+cmdVal);
		
		//문자열을 클래스로 변환
		try {
			Class cmdClass=Class.forName(cmdVal);
			//=> 동일한 이름으로 클래스가 생성되기 때문에 만들어놓은 BookController2클래스가 생성됨
			
			//클래스를 인스턴스로
			Controller controller= (Controller)cmdClass.newInstance();
			
			//3 메서드 호출
			String viewPage = controller.requestPro(request, response);
			System.out.println("viewPage= "+viewPage);
			
			if(controller.isRedirect()) {
				//해당 페이지로 redirect
				System.out.println("redirect! \n");
				response.sendRedirect(contextPath +viewPage);//절대참조화 => forward와 똑같이 보내기 위해
			}else {
				System.out.println("forward!\n");
				
			//4 해당 뷰페이지로 포워딩
			RequestDispatcher dispatcher
			=request.getRequestDispatcher(viewPage);
			
			dispatcher.forward(request, response);
			}
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (Throwable e) {
			e.printStackTrace();
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestProcess(request, response);
	}
	

}
