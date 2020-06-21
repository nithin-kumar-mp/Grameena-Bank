package com.personal.grameenabank;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

public class Model {

	public boolean authenticateLogin()  {
		
		Users user = new Users();
		user.setAccno(1);
		user.setAcctype("Savings");
		user.setAddress("acwecfewc");
		user.setBranch("24f44f4");
		user.setCreateddate("25/08/2010");
		user.setEmail("nitghtrrvnoi");
		user.setIfsc("sreferf");
		user.setName("erf4fg3");
		user.setPassword("wefwefw");
		user.setPhnno(1234567890);
		user.setUsername("wefwefwe");
		UserBalance ub = new UserBalance();
		ub.setAccno(1);
		ub.setBalance(5000);
		ub.setDate("25/05/1997");
		 Configuration conf = new Configuration().configure().addAnnotatedClass(Users.class).addAnnotatedClass(UserBalance.class);
	     StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(conf.getProperties());
	     ServiceRegistry build = builder.build();
	     SessionFactory buildSessionFactory = conf.buildSessionFactory(build);
	     Session session = buildSessionFactory.openSession();
	     session.beginTransaction();
	     session.save(user);
	     session.save(ub);
	     session.getTransaction().commit();
	     session.close();
		return true;
	}
}
