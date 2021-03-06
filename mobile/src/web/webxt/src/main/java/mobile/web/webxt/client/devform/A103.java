package mobile.web.webxt.client.devform;

import java.util.ArrayList;
import java.util.List;

import mobile.web.webxt.client.form.EntityContentPanel;
import mobile.web.webxt.client.form.MyGeneralForm;
import mobile.web.webxt.client.form.validations.Validate;
import mobile.web.webxt.client.form.widgetsgrid.ArrayColumnData;
import mobile.web.webxt.client.form.widgetsgrid.EntityEditorGrid;
import mobile.web.webxt.client.form.widgetsgrid.ExpireColumnConfig;
import mobile.web.webxt.client.form.widgetsgrid.GridPagingToolBar;
import mobile.web.webxt.client.form.widgetsgrid.GridToolBar;
import mobile.web.webxt.client.form.widgetsgrid.MyColumnData;
import mobile.web.webxt.client.form.widgetsgrid.NormalColumn;

import com.extjs.gxt.ui.client.Style.SortDir;
import com.extjs.gxt.ui.client.event.BaseEvent;
import com.extjs.gxt.ui.client.event.Events;
import com.extjs.gxt.ui.client.event.Listener;
import com.extjs.gxt.ui.client.widget.grid.ColumnConfig;
import com.extjs.gxt.ui.client.widget.grid.ColumnModel;
import com.google.gwt.user.client.Element;

public class A103 extends MyGeneralForm {

	private final static String PROCESS = "A103";
	private final static String ENTITY = "Subsystem";
	private final Integer PAGE_SIZE = 5;

	public A103() {
		super(PROCESS, true);
		setReference(ENTITY);
	}

	@Override
	protected void onRender(Element parent, int index) {
		super.onRender(parent, index);

		// Configuration
		final ArrayColumnData cdata = new ArrayColumnData();
		cdata.add(new MyColumnData("pk_subsystemId", "Sub", 70, 2, false));
		cdata.add(new MyColumnData("name", "Nombre", 150, 40, false));
		getConfig().setlDataSource(cdata.getDataSources());

		// Columns
		List<ColumnConfig> configs = new ArrayList<ColumnConfig>();
		configs.add(new NormalColumn(cdata.get(0), Validate.TEXT));
		configs.add(new NormalColumn(cdata.get(1), Validate.TEXT));
		configs.add(new ExpireColumnConfig());
		ColumnModel cm = new ColumnModel(configs);

		// Content panel
		EntityContentPanel cp = new EntityContentPanel("Subsistemas", 400, 230);

		// Grid
		final EntityEditorGrid grid = new EntityEditorGrid(getStore(), cm);
		grid.setAutoExpandColumn("name");
		cp.add(grid);
		grid.addListener(Events.Attach, new Listener<BaseEvent>() {
			public void handleEvent(BaseEvent be) {
				getStore().sort(cdata.getIdFields().get(0), SortDir.ASC);
			}
		});

		// Top tool bar
		GridToolBar toolBar = new GridToolBar(grid, getStore());
		cp.setTopComponent(toolBar);

		// Paging tool bar
		final GridPagingToolBar pagingToolBar = new GridPagingToolBar(grid, PAGE_SIZE);
		cp.setBottomComponent(pagingToolBar);

		add(cp);
	}
}