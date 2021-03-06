package mobile.entity.microcredit;

import javax.persistence.*;

import mobile.entity.schema.AbstractEntityId;
import mobile.entity.schema.GeneralEntityId;

/**
 * The persistent class for the PARTNER_GROUP_ID database table.
 */
@Entity
@Table(name = "PARTNER_GROUP_ID")
public class PartnerGroupId extends AbstractEntityId implements GeneralEntityId {
	private static final long serialVersionUID = 1L;

	/**
	 * Partner group id
	 */
	@Id
	@Column(name = "PARTNER_GROUP_ID", nullable = false)
	private Integer partnerGroupId;

	public PartnerGroupId() {
	}

	public PartnerGroupId(Integer partnerGroupId) {
		this.partnerGroupId = partnerGroupId;
	}

	public Integer getPartnerGroupId() {
		return this.partnerGroupId;
	}

	public void setPartnerGroupId(Integer partnerGroupId) {
		this.partnerGroupId = partnerGroupId;
	}

	@Override
	public Object getPk() {
		return this.partnerGroupId;
	}

	@Override
	public void setPk(Object pk) {
		this.partnerGroupId = (Integer) pk;
	}

	@Override
	public String toString() {
		return "PARTNER_GROUP_ID:[" + this.getPk().toString() + "]";
	}
}
