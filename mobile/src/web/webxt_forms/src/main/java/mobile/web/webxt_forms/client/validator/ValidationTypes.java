package mobile.web.webxt_forms.client.validator;

public enum ValidationTypes {
	ALPHABET("^[a-zA-Z_]+$", "ALPHABET"), ALPHANUMERIC("^[a-zA-Z0-9_]+$",
			"ALPHANUMERIC"), NUMERIC("^[+0-9]+$", "NUMERIC"), EMAIL(
			"^(\\w+)([-+.][\\w]+)*@(\\w[-\\w]*\\.){1,5}([A-Za-z]){2,4}$",
			"EMAIL");
	String regex;
	String name;

	ValidationTypes(String regex, String name) {
		this.regex = regex;
		this.name = name;
	}
}
