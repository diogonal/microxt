package mobile.entity.microcredit;

import javax.persistence.*;

import mobile.entity.schema.AbstractCompanyLanguageKey;
import mobile.entity.schema.MulticompanyKey;
import mobile.entity.schema.MultilanguageKey;

/**
 * The primary key class for the ACCOUNT_STATUS database table.
 */
@Embeddable
public class AccountStatusPk extends AbstractCompanyLanguageKey implements MulticompanyKey, MultilanguageKey {
	private static final long serialVersionUID = 1L;

	/**
	 * Status
	 */
	@Column(name = "STATUS_ID", nullable = false)
	private String statusId;

	public AccountStatusPk() {
	}

	public AccountStatusPk(String statusId) {
		this.statusId = statusId;
	}

	public String getStatusId() {
		return this.statusId;
	}

	public void setStatusId(String statusId) {
		this.statusId = statusId;
	}

	@Override
	public String toString() {
		return "[" + this.getCompanyId() + ", " + this.getLanguageId() + ", " + this.getStatusId() + "]";
	}
}
