package mobile.web.webxt.client.devform;

import java.util.ArrayList;
import java.util.List;

import mobile.web.webxt.client.data.form.Reference;
import mobile.web.webxt.client.form.EntityContentPanel;
import mobile.web.webxt.client.form.MyGeneralForm;
import mobile.web.webxt.client.form.widgetsgrid.ArrayColumnData;
import mobile.web.webxt.client.form.widgetsgrid.ComboColumn;
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
import com.extjs.gxt.ui.client.widget.grid.filters.GridFilters;
import com.extjs.gxt.ui.client.widget.grid.filters.StringFilter;
import com.google.gwt.user.client.Element;

public class G101 extends MyGeneralForm {

	private final static String PROCESS = "G101";
	private final static String ENTITY = "Parameter";
	private final Integer PAGE_SIZE = 10;

	public G101() {
		super(PROCESS, true);
		setReference(ENTITY);
	}

	@Override
	protected void onRender(Element parent, int index) {
		super.onRender(parent, index);

		// Configuration
		final ArrayColumnData cdata = new ArrayColumnData();
		cdata.add(new MyColumnData("pk_parameterId", "Parametro", 100, 40, false));
		cdata.add(new MyColumnData("subsystemId", "Sub", 40, 2, false));
		cdata.add(new MyColumnData("dataTypeId", "Tipo", 70, 10, false));
		cdata.add(new MyColumnData("parameterValue", "Valor", 100, 50, false));
		cdata.add(new MyColumnData("description", "Descripcion", 200, 150, false));
		cdata.add(new MyColumnData("description", "Descripcion", 200, 150, false));
		getConfig().setlDataSource(cdata.getDataSources());

		// Column model
		List<ColumnConfig> configs = new ArrayList<ColumnConfig>();

		configs.add(new NormalColumn(cdata.get(0)));

		ComboColumn comboCol = new ComboColumn(cdata.get(1));
		Reference refSub = new Reference("sub", "Subsystem");
		ArrayColumnData cdataCombo = new ArrayColumnData();
		cdataCombo.add(new MyColumnData("sub", "pk_subsystemId", "Sub", 40));
		cdataCombo.add(new MyColumnData("sub", "name", "Nombre", 150));
		comboCol.setQueryData(refSub, cdataCombo);
		configs.add(comboCol);

		comboCol = new ComboColumn(cdata.get(2));
		Reference refDataType = new Reference("type", "DataType");
		cdataCombo = new ArrayColumnData();
		cdataCombo.add(new MyColumnData("type", "dataTypeId", "Tipo", 70));
		cdataCombo.add(new MyColumnData("type", "description", "Descripcion", 200));
		comboCol.setQueryData(refDataType, cdataCombo);
		configs.add(comboCol);

		configs.add(new NormalColumn(cdata.get(3)));
		configs.add(new NormalColumn(cdata.get(4)));
		configs.add(new ExpireColumnConfig());

		ColumnModel cm = new ColumnModel(configs);

		// Filters
		GridFilters filters = new GridFilters();
		StringFilter parameterIdFilter = new StringFilter(cdata.getIdFields().get(0));
		StringFilter subsystemFilter = new StringFilter(cdata.getIdFields().get(1));
		filters.addFilter(parameterIdFilter);
		filters.addFilter(subsystemFilter);

		// Content panel
		EntityContentPanel cp = new EntityContentPanel("Parámetros", 600, 340);

		// Grid
		final EntityEditorGrid grid = new EntityEditorGrid(getStore(), cm);
		grid.setAutoExpandColumn("description");
		grid.addPlugin(filters);
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