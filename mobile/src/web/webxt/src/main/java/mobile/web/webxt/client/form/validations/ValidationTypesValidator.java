package mobile.web.webxt.client.form.validations;

import com.extjs.gxt.ui.client.widget.form.Field;
import com.extjs.gxt.ui.client.widget.form.Validator;

public class ValidationTypesValidator implements Validator {

	private ValidationTypes type;

	public ValidationTypesValidator(ValidationTypes type) {
		this.type = type;
	}

	public String validate(Field<?> field, String value) {
		String res = null;
		if (!value.matches(type.regex)) {
			res = value + " es un valor " + type.name + " incorrecto";
		}
		
		return res;
	}
	
}
