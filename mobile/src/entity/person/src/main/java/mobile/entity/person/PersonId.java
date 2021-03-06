package mobile.entity.person;

import javax.persistence.*;

import mobile.entity.schema.AbstractEntityId;
import mobile.entity.schema.GeneralEntityId;

/**
 * The persistent class for the PERSON_ID database table.
 */
@Entity
@Table(name = "PERSON_ID")
public class PersonId extends AbstractEntityId implements GeneralEntityId {
	private static final long serialVersionUID = 1L;

	/**
	 * Person Id
	 */
	@Id
	@Column(name = "PERSON_ID", nullable = false)
	private Integer personId;

	public PersonId() {
	}

	public PersonId(Integer personId) {
		this.personId = personId;
	}

	public Integer getPersonId() {
		return this.personId;
	}

	public void setPersonId(Integer personId) {
		this.personId = personId;
	}

	@Override
	public Object getPk() {
		return this.personId;
	}

	@Override
	public void setPk(Object pk) {
		this.personId = (Integer) pk;
	}

	@Override
	public String toString() {
		return "PERSON_ID:[" + this.getPk().toString() + "]";
	}
}
