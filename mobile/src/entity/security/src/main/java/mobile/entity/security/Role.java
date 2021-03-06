package mobile.entity.security;

import javax.persistence.*;

import mobile.entity.schema.AbstractHistorical;
import mobile.entity.schema.Multicompany;
import mobile.entity.schema.Historical;

/**
 * The persistent class for the ROLE database table. Values of roles
 */
@Entity
@Table(name = "ROLE")
public class Role extends AbstractHistorical implements Multicompany, Historical {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private RolePk pk;

	/**
	 * Day Id
	 */
	@Column(name = "DAY_ID", nullable = true)
	private String dayId;

	/**
	 * Hour From
	 */
	@Column(name = "HOUR_FROM", nullable = true)
	private String hourFrom;

	/**
	 * Hour To
	 */
	@Column(name = "HOUR_TO", nullable = true)
	private String hourTo;

	/**
	 * Editable
	 */
	@Column(name = "EDITABLE", nullable = false)
	private Boolean editable;

	public Role() {
	}

	public Role(RolePk pk) {
		this.pk = pk;
	}

	public Role(RolePk pk, Boolean editable) {
		this.pk = pk;
		this.editable = editable;
	}

	public RolePk getPk() {
		return this.pk;
	}

	public void setPk(RolePk pk) {
		this.pk = pk;
	}

	public String getDayId() {
		return this.dayId;
	}

	public void setDayId(String dayId) {
		this.dayId = dayId;
	}

	public String getHourFrom() {
		return this.hourFrom;
	}

	public void setHourFrom(String hourFrom) {
		this.hourFrom = hourFrom;
	}

	public String getHourTo() {
		return this.hourTo;
	}

	public void setHourTo(String hourTo) {
		this.hourTo = hourTo;
	}

	public Boolean getEditable() {
		return this.editable;
	}

	public void setEditable(Boolean editable) {
		this.editable = editable;
	}

	@Override
	public void setPk(Object pk) {
		this.pk = (RolePk) pk;
	}

	@Override
	public Object clone() throws CloneNotSupportedException {
		Role copy = (Role) super.clone();
		copy.setPk((RolePk) this.pk.clone());
		return copy;
	}

	@Override
	public String toString() {
		return "ROLE:[" + this.getPk().toString() + ", " + this.getCreated() + ", " + this.getDayId() + ", "
				+ this.getHourFrom() + ", " + this.getHourTo() + ", " + this.getEditable() + "]";
	}
}
