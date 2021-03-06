package mobile.web.webxt_forms.client.forms;

import mobile.web.message.Data;
import mobile.web.message.Field;
import mobile.web.message.Message;
import mobile.web.message.Parser;
import mobile.web.webxt_forms.client.widgets.CustomFlexTable;
import mobile.web.webxt_forms.client.widgets.CustomTabPanel;
import mobile.web.webxt_forms.client.widgets.FilterTreePanel;
import mobile.web.webxt_forms.client.widgets.PositionWidget;
import mobile.web.webxt_forms.client.widgets.PrincipalPanel;
import mobile.web.webxt_forms.client.widgets.StackPanel;

import com.extjs.gxt.ui.client.Style.HorizontalAlignment;
import com.extjs.gxt.ui.client.event.ButtonEvent;
import com.extjs.gxt.ui.client.event.ComponentEvent;
import com.extjs.gxt.ui.client.event.Events;
import com.extjs.gxt.ui.client.event.KeyListener;
import com.extjs.gxt.ui.client.event.SelectionListener;
import com.extjs.gxt.ui.client.util.IconHelper;
import com.extjs.gxt.ui.client.widget.Dialog;
import com.extjs.gxt.ui.client.widget.Info;
import com.extjs.gxt.ui.client.widget.Status;
import com.extjs.gxt.ui.client.widget.TabItem;
import com.extjs.gxt.ui.client.widget.button.Button;
import com.extjs.gxt.ui.client.widget.form.TextField;
import com.extjs.gxt.ui.client.widget.layout.FormLayout;
import com.extjs.gxt.ui.client.widget.toolbar.FillToolItem;
import com.google.gwt.dom.client.Style.Unit;
import com.google.gwt.http.client.Request;
import com.google.gwt.http.client.RequestBuilder;
import com.google.gwt.http.client.RequestCallback;
import com.google.gwt.http.client.RequestException;
import com.google.gwt.http.client.Response;
import com.google.gwt.user.client.Timer;
import com.google.gwt.user.client.ui.HTML;
import com.google.gwt.user.client.ui.RootLayoutPanel;

public class LoginDialog extends Dialog {

	protected TextField<String> userName;
	protected TextField<String> password;
	protected Button reset;
	protected Button login;
	protected Status status;
	private CustomTabPanel tabPanel = new CustomTabPanel();
	Message message = new Message();

	// private final LoginServiceAsync loginService = GWT
	// .create(LoginService.class);

	public LoginDialog() {

		FormLayout layout = new FormLayout();
		layout.setLabelWidth(90);
		layout.setDefaultWidth(155);
		setClosable(false);
		setLayout(layout);

		setButtonAlign(HorizontalAlignment.LEFT);
		setButtons("");
		setIcon(IconHelper.createStyle("user"));
		setHeading("Start microXT");
		setModal(true);
		setBodyBorder(true);
		setBodyStyle("padding: 8px;background: none");
		setWidth(300);
		setResizable(false);

		KeyListener keyListener = new KeyListener() {
			public void componentKeyUp(ComponentEvent event) {
				validate();
			}

		};

		userName = new TextField<String>();
		userName.setMinLength(4);
		userName.setFieldLabel("Username");
		userName.addKeyListener(keyListener);
		add(userName);

		password = new TextField<String>();
		password.setMinLength(4);
		password.setPassword(true);
		password.setFieldLabel("Password");
		password.addKeyListener(keyListener);

		KeyListener listener = new KeyListener() {
			@Override
			public void componentKeyPress(ComponentEvent event) {
				if (event.getKeyCode() == 13) {
					login.fireEvent(Events.Select);
				}
				super.componentKeyPress(event);
			}

		};

		password.addKeyListener(listener);

		add(password);

		setFocusWidget(userName);

	}

	@Override
	protected void createButtons() {
		super.createButtons();
		status = new Status();
		status.setBusy("please wait...");
		status.hide();
		status.setAutoWidth(true);
		getButtonBar().add(status);

		getButtonBar().add(new FillToolItem());

		reset = new Button("Reset");
		reset.addSelectionListener(new SelectionListener<ButtonEvent>() {
			public void componentSelected(ButtonEvent ce) {
				clear();
			}

		});

		login = new Button("Login");
		login.disable();
		login.addSelectionListener(new SelectionListener<ButtonEvent>() {
			public void componentSelected(ButtonEvent ce) {
				onSubmit();
			}
		});

		addButton(reset);
		addButton(login);

	}

	protected void onSubmit() {
		status.show();
		getButtonBar().disable();
		Timer t = new Timer() {

			@Override
			public void run() {
				// ESTE ES EL METODO CON HTTP SERVLET:
				createMessage(userName.getValue(), password.getValue());
				String json = message.toJSON();
				System.out.println("Json enviado desde el cliente: " + json);
				fetchDataFromServer(json);
			}

		};
		t.schedule(2000);
	}

	public void showPrincipalPanel() {

		Info.display("Informacion", "Ingreso Exitoso");
		LoginDialog.this.hide();

		TabItem item = new TabItem();
		PrincipalPanel ble = new PrincipalPanel();

		/*---------------------QUEDA PENDIENTE POSICIONAR----------------------*/

		PositionWidget pw1 = new PositionWidget();

		pw1.add(new CustomFlexTable());
		ble.addWidget("north", pw1);

		/*---------------------AQUI VAN LOS WIDGETS DE LA PAG PRINCIPAL----------------------*/

		PositionWidget pw = new PositionWidget("BIENVENIDO A MICRO-GXT");

		// Button btn = new Button("Cuantos tabs hay?");
		// btn.addSelectionListener(new SelectionListener<ButtonEvent>() {
		// @Override
		// public void componentSelected(ButtonEvent ce) {
		// Timer t = new Timer() {
		// public void run() {
		// Window.alert("Nifty, eh?");
		// }
		// };
		//
		// // Schedule the timer to run once in 5 seconds.
		// t.scheduleRepeating(5000);
		// }
		// });
		//
		// pw.add(btn);
		item.add(pw);

		/*--------------------------------------------------------------*/

		tabPanel.addTab("PRINCIPAL", item);
		Info.display("Informacion", "'{0}' fue agregado",
				"Tab " + tabPanel.getTabIdx());

		ble.addWidget("center", tabPanel);

		/*-------------------PANEL IZQUIERDO---------------*/

		StackPanel sp = new StackPanel(Unit.EM);
		sp.addWidget("Start", 3, new FilterTreePanel(tabPanel));
		sp.addWidget("Tasks", 3, new HTML("Put here some tasks"));
		sp.addWidget("Maps", 3, new HTML("Put here the Maps"));

		/*--------------------------------------------------------------*/

		ble.addWidget("west", sp);

		RootLayoutPanel rp = RootLayoutPanel.get();
		rp.add(ble);
	}

	public void clear() {
		userName.reset();
		password.reset();
		validate();
		userName.focus();
	}

	protected boolean hasValue(TextField<String> field) {
		return field.getValue() != null && field.getValue().length() > 0;
	}

	protected void validate() {
		login.setEnabled(hasValue(userName) && hasValue(password)
				&& password.getValue().length() > 3);
	}

	private void fetchDataFromServer(String message) {

		RequestBuilder requestBuilder = new RequestBuilder(RequestBuilder.POST,
				"/mobile.web.webxt.Application/message");
		requestBuilder.setHeader("Content-Type",
				"application/x-www-form-urlencoded");

		try {
			requestBuilder.sendRequest("message=" + message,
					new RequestCallback() {

						@Override
						public void onResponseReceived(Request request,
								Response response) {
							// ToDo: Get your String here
							System.out.println("Json enviado desde el server: "
									+ response.getText());

							if (parseMessage(response.getText())) {
								showPrincipalPanel();
							} else {
								Info.display("Informacion",
										"Ingreso Erroneo, Intente otra vez");
								clear();
								getButtonBar().enable();
								status.hide();
							}

						}

						@Override
						public void onError(Request request, Throwable exception) {
							System.out.println("Shit no valió");
						}
					});
		} catch (RequestException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}

	public boolean parseMessage(String resp) {

		Message msj = null;
		try {
			msj = new Message(new Parser(resp, Parser.JSON));
		} catch (Exception e1) {
			e1.printStackTrace();
		}

		Data data = new Data();
		data = msj.getData("login");

		String success = data.getField("msj").getValue();

		System.out.println(success);

		return Boolean.valueOf(success);

	}

	public void createMessage(String usr, String pwd) {

		Data data = new Data("login");
		data.addField(new Field("user", usr));
		data.addField(new Field("pwd", pwd));
		message.addData(data);
	}

}