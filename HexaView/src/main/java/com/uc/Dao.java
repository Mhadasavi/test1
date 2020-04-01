package com.uc;

import java.util.List; 

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.query.Query;

public class Dao {
	static StandardServiceRegistry ssr=new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
	static Metadata meta=new MetadataSources(ssr).getMetadataBuilder().build();
	static SessionFactory sf=meta.getSessionFactoryBuilder().build();
	static Session session=sf.openSession();
	static Transaction tx=session.beginTransaction();
	
	public static int register(bean2 bean2) {
	int i=0;
	i=(Integer)session.save(bean2);    
	tx.commit();
	//session.close();
	return i;
	}
	public static List retreive(bean2 bean2) {
	Query<bean2> query=session.createQuery("from bean2");
	List<bean2> list=query.list();
	//session.close();
	return list;
	}
	
	public static bean2 getUser(int id) {
		bean2 user=session.get(bean2.class, id);
		System.out.println("in dao"+user.getId());
	//	session.close();
		return user;
		
	}
	public static void update(bean2 obj) {  
	/*Query q=session.createQuery("update bean2 set name=:n,age=:a,gender:g,mail:m,mobile:mob where id:+'obj.getId()'");
	q.setParameter("n",obj.getName());
	q.setParameter("a", obj.getAge());
	q.setParameter("g", obj.getGender());
	q.setParameter("m", obj.getMail());
	q.setParameter("mob", obj.getMobile());
	int uc=q.executeUpdate();
	*/
	//bean2 user=session.load(bean2.class,obj.getId());
	session.saveOrUpdate(obj);
	session.close();
	tx.commit();
	//return uc;
	
	}
}
