package microxt.entity.entity;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the ENTITY database table.
 * 
 */
@Embeddable
public class EntityPK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="COMPANY_ID", unique=true, nullable=false, length=4)
	private String companyId;

	@Column(name="ENTITY_ID", unique=true, nullable=false, length=30)
	private String entityId;

    public EntityPK() {
    }
	public String getCompanyId() {
		return this.companyId;
	}
	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}
	public String getEntityId() {
		return this.entityId;
	}
	public void setEntityId(String entityId) {
		this.entityId = entityId;
	}

	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof EntityPK)) {
			return false;
		}
		EntityPK castOther = (EntityPK)other;
		return 
			this.companyId.equals(castOther.companyId)
			&& this.entityId.equals(castOther.entityId);

    }
    
	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.companyId.hashCode();
		hash = hash * prime + this.entityId.hashCode();
		
		return hash;
    }
}