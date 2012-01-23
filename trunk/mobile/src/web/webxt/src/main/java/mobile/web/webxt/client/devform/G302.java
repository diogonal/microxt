package mobile.web.webxt.client.devform;

import java.util.ArrayList;
import java.util.List;

import mobile.web.webxt.client.data.MyHttpProxy;
import mobile.web.webxt.client.data.MyListStore;
import mobile.web.webxt.client.data.MyPagingLoader;
import mobile.web.webxt.client.data.MyProcessConfig;
import mobile.web.webxt.client.form.EntityContentPanel;
import mobile.web.webxt.client.form.MyGeneralForm;
import mobile.web.webxt.client.form.widgets.ComboForm;
import mobile.web.webxt.client.form.widgetsgrid.ArrayColumnData;
import mobile.web.webxt.client.form.widgetsgrid.EntityEditorGrid;
import mobile.web.webxt.client.form.widgetsgrid.ExpireColumnConfig;
import mobile.web.webxt.client.form.widgetsgrid.GridPagingToolBar;
import mobile.web.webxt.client.form.widgetsgrid.GridToolBar;
import mobile.web.webxt.client.form.widgetsgrid.MyColumnData;
import mobile.web.webxt.client.form.widgetsgrid.NormalColumn;

import com.extjs.gxt.ui.client.data.BaseStringFilterConfig;
import com.extjs.gxt.ui.client.data.FilterConfig;
import com.extjs.gxt.ui.client.data.LoadEvent;
import com.extjs.gxt.ui.client.event.BaseEvent;
import com.extjs.gxt.ui.client.event.Events;
import com.extjs.gxt.ui.client.event.Listener;
import com.extjs.gxt.ui.client.event.LoadListener;
import com.extjs.gxt.ui.client.store.Store;
import com.extjs.gxt.ui.client.store.StoreEvent;
import com.extjs.gxt.ui.client.store.StoreListener;
import com.extjs.gxt.ui.client.widget.Info;
import com.extjs.gxt.ui.client.widget.form.FormPanel;
import com.extjs.gxt.ui.client.widget.grid.ColumnConfig;
import com.extjs.gxt.ui.client.widget.grid.ColumnModel;
import com.google.gwt.user.client.Element;

public class G302 extends MyGeneralForm {

	private final String PROCESS = "G302";
	private final String ENTITY = "Province";
	private final Integer PAGE_SIZE = 5;

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	protected void onRender(Element parent, int index) {
		super.onRender(parent, index);
	      
	    // Configuration
		final ArrayColumnData cdata = new ArrayColumnData();
		cdata.add(new MyColumnData("pk_countryId", "Pais", 70, 2, false));
		cdata.add(new MyColumnData("pk_provinceId", "Codigo", 70, 2, false));
		cdata.add(new MyColumnData("name", "Nombre", 150, 40, false));

		MyProcessConfig config = new MyProcessConfig(PROCESS, ENTITY, cdata.getIdFields());
		
		// Proxy - loader - store
		MyHttpProxy proxy = new MyHttpProxy();
		final MyPagingLoader loader = new MyPagingLoader(proxy, config);
		final MyListStore store = new MyListStore(loader);

		// Columns
		List<ColumnConfig> configs = new ArrayList<ColumnConfig>();

		configs.add(new NormalColumn(cdata.get(0)));
		configs.add(new NormalColumn(cdata.get(1)));
		configs.add(new NormalColumn(cdata.get(2)));
		configs.add(new ExpireColumnConfig());
		
		ColumnModel cm = new ColumnModel(configs);
		
		// Content panel
		EntityContentPanel gridPanel = new EntityContentPanel(400, 230);
		
		// Grid
		final EntityEditorGrid grid = new EntityEditorGrid(store, cm);
		grid.setAutoExpandColumn("name");
		grid.getColumnModel().getColumn(0).getEditor().disable();
		grid.addListener(Events.Attach, new Listener<BaseEvent>() {
			public void handleEvent(BaseEvent be) {
				//store.sort(cdata.getIdFields().get(0), SortDir.ASC);
			}
		});
		gridPanel.add(grid);
		
		// Top tool bar
		GridToolBar toolBar = new GridToolBar(grid, store);
		toolBar.initColumnIndex = 1;
		gridPanel.setTopComponent(toolBar);
		
		// Paging tool bar
		final GridPagingToolBar pagingToolBar = new GridPagingToolBar(PAGE_SIZE,loader);
		gridPanel.setBottomComponent(pagingToolBar);
		
		// Father panel
		EntityContentPanel panel = new EntityContentPanel("Provincias", 400, 300);
		
		// Subsystem combo
	    final ComboForm combo = new ComboForm("Pais", "name");
	    final ArrayColumnData combodata = new ArrayColumnData();
		combodata.add(new MyColumnData("pk_countryId", "Codigo", 70));
		combodata.add(new MyColumnData("name", "Nombre", 150));
	    combo.setRqData("Country", combodata);
	    
	    FormPanel headerPanel = new FormPanel();
	    headerPanel.setPadding(10);  
	    headerPanel.setHeaderVisible(false);  
	    headerPanel.setBodyBorder(true);  
	    headerPanel.setFieldWidth(150);
	    headerPanel.add(combo);
	    
	    LoadListener filterListener = new LoadListener() {
	        public void loaderBeforeLoad(LoadEvent le) {
	        	// Validate combo selected
	        	if(combo.getValue()==null){
	        		le.setCancelled(true);
	        		Info.display("G302", "Debe seleccionar un Pais");
	        	}
	        	
	        	MyProcessConfig config = le.getConfig();
	        	String ffield = "pk_countryId";
	        	
	        	List<FilterConfig> filters = config.getFilterConfigs(); 
	        	if(filters==null){
	        		filters  = new ArrayList<FilterConfig>();
	        	}
	        	
	        	boolean existe = false;
	        	for (FilterConfig fil : filters) {
					if (fil.getField().compareTo(ffield)==0){
						existe = true;
						fil.setValue(combo.getValue().get(ffield));
					}
				}
	        	
	        	if(!existe){
	        		FilterConfig filter = new BaseStringFilterConfig();
		        	filter.setField(ffield);
		        	filter.setComparison("=");
		        	filter.setValue(combo.getValue().get(ffield));
		        	filters.add(filter);
	        	}
	        	
	        	config.setFilterConfigs(filters);
	        }
	    };
	    
	    store.addStoreListener(new StoreListener() {
			public void handleEvent(StoreEvent se) {
				
				String codCountry = combo.getValue().get("pk_countryId").toString();
				
				if (se.getType() == Store.Add) {
					grid.getStore().getAt(store.getCount()-1).set("pk_countryId", codCountry);
				}
			}
		});
	        
	    loader.addListener(MyPagingLoader.BeforeLoad, filterListener);
	    
	    panel.setTopComponent(headerPanel);
		panel.add(gridPanel);
		add(panel);
	}
}