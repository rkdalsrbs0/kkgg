package jungle.util;


import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.GraphicsEnvironment;
import java.awt.RenderingHints;
import java.awt.font.FontRenderContext;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.InputStream;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.RandomStringUtils;

public class CaptchaGenServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    @Override
	public void init() throws ServletException {
		super.init();
		
//		// 폰트 등록
//		try {
//			Font font = Font.createFont(Font.TRUETYPE_FONT, this.getClass().getResourceAsStream(filePath+"font/NanumGothic-Regular.ttf"));
//			GraphicsEnvironment.getLocalGraphicsEnvironment().registerFont(font);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
	}
	
    public CaptchaGenServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		generateCaptcha(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		generateCaptcha(request, response);
	}
	
	private void generateCaptcha(HttpServletRequest request, HttpServletResponse response){
		try {
			// 알파벳 숫자섞인 5자리 문자열 생성
			String randomString = RandomStringUtils.randomAlphanumeric(5).toUpperCase();
			
			// 세션에 저장
			request.getSession().setAttribute("CAPTCHA", randomString);
			
			Font font = new Font("Helvetica 67 Medium Condensed", Font.PLAIN, 14);
			FontRenderContext frc = new FontRenderContext(null, true, true);
			Rectangle2D bounds = font.getStringBounds(randomString, frc);
			int w = (int) bounds.getWidth();
			int h = (int) bounds.getHeight();
			
			// 이미지 생성
			BufferedImage image = new BufferedImage(w, h, BufferedImage.TYPE_INT_RGB);
			Graphics2D g = image.createGraphics();
			g.setColor(Color.WHITE);
			g.fillRect(0, 0, w, h);
			g.setColor(new Color(215, 109, 16));
			g.setFont(font);
			g.setRenderingHint(RenderingHints.KEY_TEXT_ANTIALIASING, RenderingHints.VALUE_TEXT_ANTIALIAS_ON);
			g.setRenderingHint(RenderingHints.KEY_FRACTIONALMETRICS, RenderingHints.VALUE_FRACTIONALMETRICS_ON);
			g.drawString(randomString, (float) bounds.getX(), (float) -bounds.getY());
			g.dispose();

			ImageIO.write(image, "png",  response.getOutputStream());
		} catch (IOException e) {
			//e.printStackTrace();
			System.out.println("파일 오류 발생");
		}
	}

}
