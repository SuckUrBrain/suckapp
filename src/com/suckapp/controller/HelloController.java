package com.suckapp.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.http.HttpStatus;

import com.suckapp.dao.PlayerDAO;
import com.suckapp.data.Player;
import com.suckapp.exp.ResourceNotFoundException;

@Controller
public class HelloController {

	@RequestMapping("/")
	public ModelAndView helloWorld(HttpServletRequest request, HttpServletResponse response) {
		
  	   // Create a session object if it is already not  created.
        HttpSession session = request.getSession(false);
        
        System.out.println("session creation1");
        ModelAndView model = new ModelAndView("index");
        if(session == null)
        {
        	System.out.println("no session");
    	    model.addObject("state","Login");
        } 
        else 
        {
        	System.out.println("session exist");
  		    model.addObject("state",session.getAttribute("userName"));
        }
	      
		return model;
	}
	@RequestMapping(value="/login.html", method = RequestMethod.GET)
	@ResponseBody
	public String suckLogin(HttpServletRequest request,HttpServletResponse response,@RequestParam("login_userID") String userID, @RequestParam("login_password") String password) {
		System.out.println(userID + password);
		
		try {
			PlayerDAO playerdao = new PlayerDAO();
			if(playerdao.validatePlayer(userID, password))
			{
				
				HttpSession session = request.getSession(true);
				System.out.println("session creation2");
				System.out.println(session.getCreationTime());
				if(session.isNew())
				{
					String playerDetails [] = playerdao.getPlayerName(userID);
					
					session.setAttribute("userId", userID+playerDetails[1]);
					session.setAttribute("userName", playerDetails[0]);
					//ModelAndView model = new ModelAndView("index");
					//model.addObject("state",playerDetails[0]);
					System.out.println("returning"+playerDetails[1] + playerDetails[0]);
					return playerDetails[0];
				}
				else
				{
					//should not come here.
					System.out.println("session already exist");
					session.invalidate();
					return "Session already exist";
				}
			}
			else
			{
				response.setStatus(HttpServletResponse.SC_NOT_FOUND);
				return "User ID or Password is not valid";
			}
		}
		catch(Exception e){
			System.out.println(e);
			response.setStatus(HttpServletResponse.SC_NO_CONTENT);
			return e.toString();
		}
			
	}
	
	@RequestMapping(value="/lost.html", method = RequestMethod.GET)
	@ResponseBody
	public String suckLost(@RequestParam("lost_userID") String lostEmail,HttpServletResponse response) {
		System.out.println("suckLost");
		try {
			PlayerDAO playerdao = new PlayerDAO();
			if(playerdao.searchPlayer(lostEmail))
			{
				return "Check you mail";
			}
			else
			{
				response.setStatus(HttpServletResponse.SC_NOT_FOUND);
				return "User does not exist";
			}
		}
		catch(Exception e){
			System.out.println(e);
			response.setStatus(HttpServletResponse.SC_NO_CONTENT);
			return e.toString();
		}

	}
	@RequestMapping(value="/register.html", method = RequestMethod.GET)
	@ResponseBody
	public String suckRegister(@ModelAttribute ("PlayerReg") Player PlayerReg,HttpServletRequest request, HttpServletResponse response) {
		
		// Write the Student_Info object into the database
		try {
			HttpSession session = request.getSession(true);
			System.out.println("session creation3");
			if(session.isNew())
			{
				
				PlayerDAO playerdao = new PlayerDAO();
				playerdao.addPlayer(PlayerReg);
				session.setAttribute("userId", PlayerReg.getRegister_email()+PlayerReg.getRegister_mobile());
				session.setAttribute("userName", PlayerReg.getRegister_username());
			}
			else
			{
				//should not come here
				response.setStatus(HttpServletResponse.SC_CONFLICT);
				return "First log out from here";
			}
			ModelAndView model = new ModelAndView("index");
			model.addObject("state",PlayerReg.getRegister_username());
			return PlayerReg.getRegister_username();
		}
		catch(Exception e){
			System.out.println(e);
			response.setStatus(HttpServletResponse.SC_NO_CONTENT);
			return e.toString();
		}
	}
	
	@RequestMapping(value="/logout.html", method = RequestMethod.GET)
	public ModelAndView suckLogOut(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView model = new ModelAndView("index");
		model.addObject("state","Login");
		try {
			HttpSession session = request.getSession(false);
	        System.out.println("logging out");
	        if(session != null)
	        {
	        	session.invalidate();
	        }
	        return model;
		}
		catch(Exception e){
			System.out.println(e.toString());
			response.setStatus(HttpServletResponse.SC_NO_CONTENT);
			return model;
		}
	}

}