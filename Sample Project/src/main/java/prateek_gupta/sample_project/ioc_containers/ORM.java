package prateek_gupta.sample_project.ioc_containers;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import prateek_gupta.sample_project.core.entities.Table1Entity;

public class ORM {
    public static void main(String[] args) {
        Session session = null;
        SessionFactory factory;
        Table1Entity entity;
        try {
            // The only difference in Spring for Hibernate is for getting an object of
            // SessionFactory
            // Once we get an object of SessionFactory, we can use as normal Hibernate code
            factory = (SessionFactory) new ClassPathXmlApplicationContext(
                    "beans.xml").getBean("factory");
            session = factory.openSession();
            entity =session.get(Table1Entity.class,1);
            System.out.println("The value : "+entity.getCol2());
        } finally {
            if (session != null) {
                session.close();
            }
        }
    }
}
