package com.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;



public class FactoryProvider {
		public static SessionFactory factory;
		
		public static SessionFactory getFactory() {
			
			if(factory==null) {
				Configuration cfg = new Configuration().configure();
				factory = cfg.buildSessionFactory();
				
			}
			return factory;
		}
		
		
		public static void closeFactory() {
			if(factory.isOpen()) {
				factory.close();
			}
		}
}


