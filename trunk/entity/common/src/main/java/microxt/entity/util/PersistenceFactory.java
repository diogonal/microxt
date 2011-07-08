package microxt.entity.util;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class PersistenceFactory {
	public static PersistenceFactory INSTANCE = null;
	private EntityManagerFactory emf;
	private final String PERSISTENCE_UNIT = "thesis";

	private PersistenceFactory(){
		emf = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
	}

	// creador sincronizado para protegerse de posibles problemas multi-hilo
	// otra prueba para evitar instanciación múltiple
	private synchronized static void createInstance(){
		if (INSTANCE == null) {
			INSTANCE = new PersistenceFactory();
		}
	}

	private static PersistenceFactory getInstance(){
		if (INSTANCE == null) {
			createInstance();
		}
		return INSTANCE;
	}
	
	public static void init(){
		createInstance();
	}
	
	public static EntityManager getEntityManager(){
		return getInstance().emf.createEntityManager();
	}
	
	public static void close(){
		if (getInstance().emf != null) {
			getInstance().emf.close();
		}
	}
}
