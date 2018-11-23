package com.baizhi.pai.controller;

import java.awt.image.BufferedImage;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.code.kaptcha.Producer;

@Controller
public class KapController {
	@Autowired
	private Producer producer;
	@RequestMapping("/kapp")
	public void getKap(HttpSession session, HttpServletResponse response) throws IOException{

		String text=producer.createText();

		session.setAttribute("kapq", text);
		

		BufferedImage image=producer.createImage(text);

		ImageIO.write(image, "jpg", response.getOutputStream());
	}
}
