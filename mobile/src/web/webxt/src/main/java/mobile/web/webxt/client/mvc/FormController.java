package mobile.web.webxt.client.mvc;


import com.extjs.gxt.ui.client.mvc.AppEvent;
import com.extjs.gxt.ui.client.mvc.Controller;

public class FormController extends Controller {

	private FormView feedView;

	public FormController() {
		registerEventTypes(AppEvents.Init);
		registerEventTypes(AppEvents.ProcessSelected);
		registerEventTypes(AppEvents.TabSelected);
		registerEventTypes(AppEvents.ProcessReloaded);
	}

	@Override
	public void handleEvent(AppEvent event) {
		forwardToView(feedView, event);
	}

	@Override
	public void initialize() {
		super.initialize();
		feedView = new FormView(this);
	}
}