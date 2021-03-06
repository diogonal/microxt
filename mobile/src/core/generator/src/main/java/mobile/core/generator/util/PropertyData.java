package mobile.core.generator.util;

/**
 * Class for grouping property information
 */
public class PropertyData {
	StringBuilder annotations;
	String type;
	String name;
	String description;
	boolean hasSequential = false;

	public PropertyData() {
	}

	public StringBuilder getAnnotation() {
		return annotations;
	}

	public void setAnnotation(StringBuilder annotation) {
		this.annotations = annotation;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getName() {
		return name;
	}

	public void setName(String parameterName) {
		this.name = parameterName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public boolean hasSequential() {
		return hasSequential;
	}

	public void setHasSequential(boolean hasSequential) {
		this.hasSequential = hasSequential;
	}
}
