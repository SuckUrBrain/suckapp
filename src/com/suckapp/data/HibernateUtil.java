package com.suckapp.data;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

private static HibernateUtil instance = new HibernateUtil();

private SessionFactory sessionFactory;

private HibernateUtil(){
	System.out.println("instamce");
    this.sessionFactory = buildSessionFactory();
}

private synchronized static SessionFactory buildSessionFactory() {
	System.out.println("creating");
    return new Configuration().configure().buildSessionFactory();
}

public static HibernateUtil getInstance() {
    if(instance == null){
    	System.out.println("dhiman___null");
        return new HibernateUtil();
    }
    System.out.println("dhimanfactory");
    return instance;
}

public SessionFactory getSessionFactory() {
    return sessionFactory;
}

}