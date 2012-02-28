package mobile.web.webxt.client.devform;

import java.util.ArrayList;
import java.util.List;

import mobile.web.webxt.client.data.form.DataSource;
import mobile.web.webxt.client.data.form.DataSourceType;
import mobile.web.webxt.client.data.form.Reference;
import mobile.web.webxt.client.form.EntityContentPanel;
import mobile.web.webxt.client.form.MyFormPanel;
import mobile.web.webxt.client.form.MyGeneralForm;
import mobile.web.webxt.client.form.validations.Validate;
import mobile.web.webxt.client.form.widgets.InputBox;
import mobile.web.webxt.client.form.widgets.RowContainer;
import mobile.web.webxt.client.form.widgetsgrid.ArrayColumnData;
import mobile.web.webxt.client.form.widgetsgrid.ComboColumn;
import mobile.web.webxt.client.form.widgetsgrid.EntityEditorGrid;
import mobile.web.webxt.client.form.widgetsgrid.ExpireColumnConfig;
import mobile.web.webxt.client.form.widgetsgrid.GridPagingToolBar;
import mobile.web.webxt.client.form.widgetsgrid.GridToolBar;
import mobile.web.webxt.client.form.widgetsgrid.MyColumnData;
import mobile.web.webxt.client.form.widgetsgrid.NormalColumn;
import mobile.web.webxt.client.util.DatesManager;
import mobile.web.webxt.client.util.TextType;
import mobile.web.webxt.client.windows.AlertDialog;

import com.extjs.gxt.ui.client.Style.SortDir;
import com.extjs.gxt.ui.client.data.LoadEvent;
import com.extjs.gxt.ui.client.data.ModelData;
import com.extjs.gxt.ui.client.event.BaseEvent;
import com.extjs.gxt.ui.client.event.ButtonEvent;
import com.extjs.gxt.ui.client.event.Events;
import com.extjs.gxt.ui.client.event.FieldEvent;
import com.extjs.gxt.ui.client.event.GridEvent;
import com.extjs.gxt.ui.client.event.Listener;
import com.extjs.gxt.ui.client.event.LoadListener;
import com.extjs.gxt.ui.client.event.SelectionListener;
import com.extjs.gxt.ui.client.store.ListStore;
import com.extjs.gxt.ui.client.store.Store;
import com.extjs.gxt.ui.client.store.StoreEvent;
import com.extjs.gxt.ui.client.store.StoreListener;
import com.extjs.gxt.ui.client.widget.BoxComponent;
import com.extjs.gxt.ui.client.widget.Info;
import com.extjs.gxt.ui.client.widget.button.Button;
import com.extjs.gxt.ui.client.widget.form.FieldSet;
import com.extjs.gxt.ui.client.widget.form.TextField;
import com.extjs.gxt.ui.client.widget.grid.BufferView;
import com.extjs.gxt.ui.client.widget.grid.CellEditor;
import com.extjs.gxt.ui.client.widget.grid.ColumnConfig;
import com.extjs.gxt.ui.client.widget.grid.ColumnData;
import com.extjs.gxt.ui.client.widget.grid.ColumnModel;
import com.extjs.gxt.ui.client.widget.grid.Grid;
import com.extjs.gxt.ui.client.widget.grid.GridCellRenderer;
import com.google.gwt.user.client.Element;

public class A206 extends MyGeneralForm {
	
	//PROCESS FOR RESETING PASWORDS (ADMIN)

	private final static String PROCESS = "A205b";
	private final static String ENTITY = "UserAccess";
	private final Integer PAGE_SIZE = 5;
	
	InputBox defaultKey,parameterCode;
	NormalColumn dateColumn;
	GridToolBar toolBar;
	
	ColumnConfig columnEncoded;
	
	private final static String ENTITY_PARAMETER = "Parameter";
	MyFormPanel formParameter;
	MyGeneralForm formContainerParameter;
		
	boolean isReseted=false;
	
	EntityEditorGrid grid;

	public A206() {
		super(PROCESS, true);
		setReference(ENTITY);
		
		formContainerParameter = new MyGeneralForm(PROCESS);
		formContainerParameter.setReference(new Reference("par", ENTITY_PARAMETER));
		formContainerParameter.setBorders(false);
		formParameter = new MyFormPanel(formContainerParameter, "", 200);
		formParameter.setHeaderVisible(false);
		formParameter.setFrame(false);
		formParameter.setBorders(false);
		formParameter.setBodyBorder(false);
		formParameter.setStyleAttribute("padding", "0px");
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	protected void onRender(Element parent, int index) {
		super.onRender(parent, index);
		
		FieldSet fieldSet = new FieldSet();
		fieldSet.setBorders(false);
		fieldSet.setWidth(280);
		
		RowContainer row = new RowContainer();
		
		// parameterCode
		parameterCode = new InputBox();
		parameterCode.setDataSource(new DataSource("par","pk_parameterId", DataSourceType.CRITERION));
		parameterCode.setFireChangeEventOnSetValue(true);
		
		
		parameterCode.addListener(Events.Change, new Listener<FieldEvent>() {
			public void handleEvent(FieldEvent e) {
				if (e.getValue() != null) {
					formParameter.queryForm();
				}
			}
		});
		
		row.add(parameterCode);
		fieldSet.add(row);
		
		row = new RowContainer();
		defaultKey = new InputBox();
		defaultKey.setDataSource(new DataSource("par","parameterValue", DataSourceType.RECORD));
		defaultKey.setType(Validate.PASSWORD);
		
		row.add(defaultKey);
		fieldSet.add(row);
		
		formParameter.add(fieldSet);

		final ArrayColumnData cdata = new ArrayColumnData();
		cdata.add(new MyColumnData("pk_userId", "ID", 70, 20, false));
		cdata.add(new MyColumnData("userKey", "Clave", 200, 300, false));
		cdata.add(new MyColumnData("lastChange", "Ultimo Cambio", 100, 10, false));
		getConfig().setlDataSource(cdata.getDataSources());

		// Column model
		List<ColumnConfig> configs = new ArrayList<ColumnConfig>();

		// Combo Asessor
		ComboColumn comboAsessor = new ComboColumn(cdata.get(0));
		Reference refProfile = new Reference("ase", "UserAccount");
		ArrayColumnData cdataCombo = new ArrayColumnData();
		cdataCombo.add(new MyColumnData("ase", "pk_userId", "ID", 70));
		cdataCombo.add(new MyColumnData("ase", "name", "Nombre", 200));
		comboAsessor.setQueryData(refProfile, cdataCombo);
		comboAsessor.getComboBox().setPageSize(5);

		configs.add(comboAsessor);
				
		GridCellRenderer<ModelData> buttonRenderer = new GridCellRenderer<ModelData>() {

			private boolean init;

			public Object render(final ModelData model, String property, ColumnData config, final int rowIndex,
					final int colIndex, final ListStore<ModelData> store, final Grid<ModelData> grid) {
				
				if (!init) {
					init = true;
					grid.addListener(Events.ColumnResize, new Listener<GridEvent<ModelData>>() {

						public void handleEvent(GridEvent<ModelData> be) {
							for (int i = 0; i < be.getGrid().getStore().getCount(); i++) {
								if (be.getGrid().getView().getWidget(i, be.getColIndex()) != null
										&& be.getGrid().getView().getWidget(i, be.getColIndex()) instanceof BoxComponent) {
									((BoxComponent) be.getGrid().getView().getWidget(i, be.getColIndex())).setWidth(be
											.getWidth() - 10);
								
								}
							}
						}
					});
				}

				Button b = new Button("Reset", new SelectionListener<ButtonEvent>() {
					@Override
					public void componentSelected(ButtonEvent ce) {
						toolBar.enableSaveButton(false);

						if (defaultKey.getValue() != null) {
							model.set("userKey", defaultKey.getValue());
							model.set("lastChange", DatesManager.getCurrentDate());
							grid.getStore().getAt(rowIndex).set("userKey", defaultKey.getValue());
							grid.getStore().getAt(rowIndex).set("lastChange", DatesManager.getCurrentDate());
							grid.getView().refresh(true);
							store.commitChanges();
							AlertDialog al = new AlertDialog("Informacion","Contraseña de usuario: "+ model.get("pk_userId").toString() + " fue reseteada exitosamente");
							al.show();
						} else {
							Info.display("Error", "No hay Contraseña por defecto");
						}
					}
				});
				
				b.setWidth(grid.getColumnModel().getColumnWidth(colIndex) - 10);
				b.setHeight("100%");
				b.setToolTip("Resetear Contraseña");
				
				return b;

			}

		};
		
		columnEncoded = new ColumnConfig();
		columnEncoded.setId("userKey");
		columnEncoded.setHeader("Clave");
		columnEncoded.setWidth(200);
		columnEncoded.setEditor(new CellEditor(new TextField<String>()));
		configs.add(columnEncoded);
		
		dateColumn = new NormalColumn(cdata.get(2),TextType.DATE,null);
		configs.add(dateColumn);
				
		ColumnConfig column = new ColumnConfig();
		column.setId("preview");
		column.setHeader("Resetear");
		column.setWidth(50);
		column.setRenderer(buttonRenderer);
		configs.add(column);

		configs.add(new ExpireColumnConfig());

		ColumnModel cm = new ColumnModel(configs);

		// Content panel
		EntityContentPanel cp = new EntityContentPanel("Reseteo de Contraseñas", 500, 230);

		// Grid
		final EntityEditorGrid grid = new EntityEditorGrid(getStore(), cm);
		grid.setAutoExpandColumn("userKey");
		
		
		BufferView view = new BufferView();  
	    view.setRowHeight(23);  
	    grid.setView(view); 
	    
	    cp.add(grid);
		grid.addListener(Events.Attach, new Listener<BaseEvent>() {
			public void handleEvent(BaseEvent be) {
				getStore().sort(cdata.getIdFields().get(0), SortDir.ASC);
				
			}
		});
		grid.getColumnModel().getColumn(1).getEditor().disable();
		grid.getColumnModel().getColumn(2).getEditor().disable();
		
		grid.getStore().addStoreListener(new StoreListener() {
			public void handleEvent(StoreEvent se) {
				if (se.getType() == Store.Add) {
					toolBar.enableSaveButton(true);
					grid.getStore().getAt(se.getIndex()).set("userKey", defaultKey.getValue());
					grid.getStore().getAt(se.getIndex()).set("lastChange", DatesManager.getCurrentDate());
				}
				
			}
		});
		
		
		// Top tool bar
		toolBar = new GridToolBar(grid, getStore());
		cp.setTopComponent(toolBar);
		toolBar.enableSaveButton(false);
		
		// Paging tool bar
		final GridPagingToolBar pagingToolBar = new GridPagingToolBar(grid, PAGE_SIZE);
		cp.setBottomComponent(pagingToolBar);
		
		grid.getStore().getLoader().addLoadListener(new LoadListener() {
			@Override
			public void loaderBeforeLoad(LoadEvent le) {
				parameterCode.setValue("DEFAULT_PASSWORD");
			}
		});
		
		cp.add(formParameter);
		add(cp);
		
	}
	
	
}