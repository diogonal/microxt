package mobile.web.webxt.client.form;

import mobile.web.webxt.client.resources.Resources;

import com.extjs.gxt.ui.client.Style.HorizontalAlignment;
import com.extjs.gxt.ui.client.widget.ContentPanel;
import com.extjs.gxt.ui.client.widget.layout.FitLayout;

// Typical heights: 
// 5 records	230
// 10 records	340

public class EntityContentPanel extends ContentPanel {
	
	public EntityContentPanel(String title, int width, int height) {
		super();
		setHeading(title);
		setBodyBorder(true);
		setIcon(Resources.ICONS.table());
		setButtonAlign(HorizontalAlignment.CENTER);
		setLayout(new FitLayout());
		setSize(width, height);
	}
	
	public EntityContentPanel(int width, int height) {
		super();
		setHeaderVisible(false);
		setBodyBorder(true);
		setButtonAlign(HorizontalAlignment.CENTER);
		setLayout(new FitLayout());
		setSize(width, height);
	}
	
}
