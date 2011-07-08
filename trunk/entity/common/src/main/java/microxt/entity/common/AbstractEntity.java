package microxt.entity.common;

import javax.persistence.MappedSuperclass;

@MappedSuperclass
public abstract class AbstractEntity implements GeneralEntity {
	private static final long serialVersionUID = 1L;

	/*
	public abstract void load(Object dto);

	public abstract Object toDto();
	*/

	public Object clone() throws CloneNotSupportedException {
		return super.clone();
	}

	public abstract String toString();
}