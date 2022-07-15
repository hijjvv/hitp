package tp;

import java.io.IOException;
import java.lang.reflect.Method;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Mcontroller
 */
@WebServlet("/mcontrol")
@MultipartConfig(maxFileSize=1024*1024*2, location="c:/Temp/img")
public class Mcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private MDAO mdao;
	private ServletContext ctx;

	
	private final String START_PAGE = "tp/main.jsp";
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Mcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		mdao = new MDAO();
		ctx = getServletContext();
 
    
		
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String action = request.getParameter("action");
		
        mdao = new MDAO();
		
		//자바 리플랙션을 사용해 if, switch 없이 요청에 따라 메서드 실행 되도록
		Method m;
		String view = null;
		//action 파라미터 없이 접근하는 경우
		if(action == null) {
			action = "loginl";
		}
		
		try {
		
			m = this.getClass().getMethod(action, HttpServletRequest.class);
			//메소드 실행 후 리턴값을 
			view = (String) m.invoke(this,request);
			
		} catch (NoSuchMethodException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			// 에러로그를 남기고 view를 로그인화면으로 지정
			ctx.log("요청 action 없음");
			request.setAttribute("error", "action 파라미터가 잘 못되었습니다");
			view = START_PAGE;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		//Post 요청 처리후에는 리다이렉션으로 방법으로 이동할 수 있어야함.
		if(view.startsWith("redirect:/")) {
			//redirect:/ 문자열 이후 경로만 가져옴
			String rview = view.substring("redirect:/".length());
			response.sendRedirect(rview);
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
		}
	
	}
	
	public String loginl() {
		
		
		
		return "tp/ls.jsp";
	}
	
		
		
	
	}


