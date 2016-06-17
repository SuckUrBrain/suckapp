package com.suckapp.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.suckapp.data.HibernateUtil;
import com.suckapp.data.Player;

public class PlayerDAO {

	public void addPlayer(Player player) {
		
		SessionFactory sessionFactory = HibernateUtil.getInstance().getSessionFactory();
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		// this would save the Student_Info object into the database
		session.save(player);
		session.getTransaction().commit();
		session.close();
		System.out.println("dhiman");
		//sessionFactory.close();
	}
	
	public boolean validatePlayer(String userID, String password) {
		
		try
		{
			System.out.println(userID + password);
		SessionFactory sessionFactory = HibernateUtil.getInstance().getSessionFactory();
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		// this would save the Student_Info object into the database
		
		Player player = (Player) session.get(Player.class, userID);
		System.out.println(player.getRegister_mobile()+userID + password);
		session.getTransaction().commit();
		session.close();
		System.out.println(player.getRegister_mobile()+userID + password);
		return (player!=null) ? (player.getRegister_password().equals(password)) ? true : false : false;
		//sessionFactory.close();
		}
		catch (Exception e)
		{
			System.out.println(e.toString());
			return false;
		}
		
	}
	
	public String[] getPlayerName(String userID) {
		
		SessionFactory sessionFactory = HibernateUtil.getInstance().getSessionFactory();
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		// this would save the Student_Info object into the database
		Player player = session.get(Player.class, userID);
		session.getTransaction().commit();
		String playerDetails [] = {player.getRegister_username(),player.getRegister_mobile()};
		session.close();
		
		return playerDetails;
		//sessionFactory.close();
	}
	public boolean searchPlayer(String userID) {
		System.out.println("searchPlayer1");
		SessionFactory sessionFactory = HibernateUtil.getInstance().getSessionFactory();
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		// this would save the Student_Info object into the database
		System.out.println("searchPlayer1");
		Player player = session.get(Player.class, userID);
		System.out.println("searchPlayer2");
		session.getTransaction().commit();
		session.close();
		return (player!=null) ? true : false;		
		//sessionFactory.close();
	}
	
	
	
}
