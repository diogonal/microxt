package mobile.web.webxt_forms.client.data;

import java.util.List;
import java.util.Map;

import mobile.web.message.Data;
import mobile.web.message.Field;
import mobile.web.message.Item;
import mobile.web.message.Message;
import mobile.web.webxt_forms.client.data.MyProcessConfig.ProcessType;
import mobile.web.webxt_forms.shared.AlertDialog;


import com.extjs.gxt.ui.client.data.DataProxy;
import com.extjs.gxt.ui.client.data.DataReader;
import com.extjs.gxt.ui.client.data.FilterConfig;
import com.extjs.gxt.ui.client.data.FilterPagingLoadConfig;
import com.extjs.gxt.ui.client.data.ModelData;
import com.google.gwt.http.client.Request;
import com.google.gwt.http.client.RequestBuilder;
import com.google.gwt.http.client.RequestCallback;
import com.google.gwt.http.client.Response;
import com.google.gwt.http.client.URL;
import com.google.gwt.user.client.rpc.AsyncCallback;

public class MyHttpProxy<D> implements DataProxy<D> {

	protected RequestBuilder builder;

	protected String initUrl;

	private final String url = "http://127.0.0.1:9090/mobile/Core";

	private final String F_HEADER = "header";

	private final String F_RESPONSE = "response";

	private final String F_RESPONSE_CODE = "code";

	private final String F_RESPONSE_MSG = "message";

	private final String F_PROCESS_ID = "proc";

	private final String F_PROCESS_TYPE = "_type";

	private final String F_QRY_FIELDS = "_qry_fields";

	private final String F_OFFSET = "_pag_offset";

	private final String F_LIMIT = "_pag_limit";

	private final String F_ORDER = "_ord_field";

	private final String F_ORDER_DIR = "_ord_dir";

	private final String F_FILTERS = "_filters";

	private final MyReader<D> reader;

	public MyHttpProxy() {
		builder = new RequestBuilder(RequestBuilder.POST, URL.encode(url));
		builder.setHeader("Content-Type", "application/x-www-form-urlencoded");

		this.initUrl = builder.getUrl();

		reader = new MyReader<D>();
	}

	public void load(final DataReader<D> readerNull, final Object loadConfig,
			final AsyncCallback<D> callback) {
		System.out.println("MyHttpProxy.load: " + loadConfig.toString());

		// Config
		final MyProcessConfig config = (MyProcessConfig) loadConfig;

		// Reader
		final MyReader<D> reader = this.reader;

		try {
			// Header
			Message msg = new Message();
			Data header = new Data(F_HEADER);
			header.addField(new Field(F_PROCESS_ID, config.getProcess()));
			msg.addData(header);

			// Entity
			Data entityData = new Data(config.getEntity());
			entityData.addField(new Field(F_PROCESS_TYPE, ProcessType.QUERY
					.getProcessType()));
			String queryFields = "";
			int queryFieldsCounter = 0;
			for (String strField : config.getlFields()) {
				if (queryFieldsCounter > 0) {
					queryFields = queryFields + ";";
				}
				queryFields = queryFields + strField;
				queryFieldsCounter++;
			}
			Field queryField = new Field(F_QRY_FIELDS, queryFields);
			entityData.addField(queryField);

			// Entity.pagination
			FilterPagingLoadConfig paginationConfig = (FilterPagingLoadConfig) loadConfig;
			System.out.println("Limit:" + paginationConfig.getLimit());
			System.out.println("Offset:" + paginationConfig.getOffset());
			entityData.addField(new Field(F_OFFSET, String
					.valueOf(paginationConfig.getOffset())));
			entityData.addField(new Field(F_LIMIT, String
					.valueOf(paginationConfig.getLimit())));

			// Entity.ordering
			System.out.println("Order:" + paginationConfig.getSortField() + ":"
					+ paginationConfig.getSortDir());
			if (paginationConfig.getSortField() != null) {
				entityData.addField(new Field(F_ORDER, paginationConfig
						.getSortField()));
				entityData.addField(new Field(F_ORDER_DIR, paginationConfig
						.getSortDir().toString()));
			}

			// Entity.filtering
			List<FilterConfig> filters = paginationConfig.getFilterConfigs();
			System.out.println("Filters: " + filters);
			if (filters != null && filters.size() > 0) {
				String strFilters = "";
				int filtersCounter = 0;
				for (FilterConfig filter : paginationConfig.getFilterConfigs()) {
					System.out.println("Filter:" + filter.getField() + ":"
							+ filter.getComparison() + ":" + filter.getValue());
					String strFilter = filter.getField()
							+ ":"
							+ (filter.getComparison() == null ? "" : filter
									.getComparison()) + ":" + filter.getValue();
					if (filtersCounter > 0) {
						strFilters = strFilters + ";";
					}
					strFilters = strFilter;
				}
				entityData.addField(new Field(F_FILTERS, strFilters));
			}

			msg.addData(entityData);

			String data = "message=" + msg.toJSON();
			// data = generateUrl(loadConfig);

			System.out.println("Send request...");
			builder.sendRequest(data, new RequestCallback() {
				public void onError(Request request, Throwable exception) {
					callback.onFailure(exception);
				}

				public void onResponseReceived(Request request,
						Response response) {
					try {
						evaluateResponse(response, config);
						String text = response.getText();
						D data = reader.read(config, text);
						callback.onSuccess(data);
					} catch (Exception e) {
						callback.onFailure(e);
					}
				}
			});
		} catch (Exception e) {
			callback.onFailure(e);
		}
	}
	
	public void requestMsg(final MyProcessConfig config, final AsyncCallback<Message> callback) {
		System.out.println("MyHttpProxy.requestMsg: " + config.toString());

		try {
			// Header
			Message msg = new Message();
			Data header = new Data(F_HEADER);
			header.addField(new Field(F_PROCESS_ID, config.getProcess()));
			msg.addData(header);

			String data = "message=" + msg.toJSON();
			
			System.out.println("Send request...");
			
			builder.sendRequest(data, new RequestCallback() {
				public void onError(Request request, Throwable e) {
					callback.onFailure(e);
				}
				public void onResponseReceived(Request request,
						Response response) {
					try {
						Message responseMsg = evaluateResponse(response, config);
						callback.onSuccess(responseMsg);
					} catch (Exception e) {
						showError(e);
					}
				}
			});
			
		} catch (Exception e) {
			showError(e);
		}

	}
	
	private void showError(Throwable e){
		new AlertDialog("MyHttpProxy", e.getMessage()).show();
	}

	public void commit(final MyProcessConfig commitConfig,
			List<ModelData> lModified, final AsyncCallback<D> callback) {
		System.out.println("MyHttpProxy.commit");

		final MyProcessConfig config = (MyProcessConfig) commitConfig;
		System.out.println(config);

		try {
			// Header
			Message msg = new Message();
			Data header = new Data(F_HEADER);
			header.addField(new Field(F_PROCESS_ID, config.getProcess()));
			msg.addData(header);

			if (lModified.size() <= 0) {
				return;
			}

			// Entity changes
			Data entityData = new Data(config.getEntity());
			entityData.addField(new Field(F_PROCESS_TYPE,
					ProcessType.MAINTENANCE.getProcessType()));

			int counter = 1;
			for (ModelData modelData : lModified) {
				Item item = new Item(counter++);
				for (String strField : config.getlFields()) {
					Field field = new Field(strField, null);
					if (modelData.get(strField) != null
							&& modelData.get(strField).toString().trim()
									.length() > 0) {
						field.setValue(modelData.get(strField).toString());
					}
					item.addField(field);
				}
				if(modelData.get("_isNew")!=null){
					item.addField(new Field("_isNew", String.valueOf(modelData.get("_isNew"))));
				}
				entityData.addItem(item);
			}

			msg.addData(entityData);

			System.out.println("Set message in json format...");
			String data = "";
			try {
				data = "message=" + msg.toJSON();
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			System.out.println("Send request...");
			builder.sendRequest(data, new RequestCallback() {
				public void onError(Request request, Throwable exception) {
					callback.onFailure(exception);
				}

				public void onResponseReceived(Request request,
						Response response) {
					try {
						evaluateResponse(response, config);
						D data = null;
						callback.onSuccess(data);
					} catch (Exception e) {
						callback.onFailure(e);
					}
				}
			});
		} catch (Exception e) {
			callback.onFailure(e);
		}
	}

	private Message evaluateResponse(Response response, MyProcessConfig config)
			throws Exception {
		// Evaluate response
		if (response.getStatusCode() != Response.SC_OK) {
			if (response.getStatusCode() == 0) {
				throw new RuntimeException(
						"HttpProxy: Comunication error. StatusCode="
								+ response.getStatusCode());
			}
			throw new RuntimeException("HttpProxy: Invalid status code "
					+ response.getStatusCode());
		}

		String text = response.getText();
		if (text.startsWith("No message received")) {
			throw new RuntimeException(
					"HttpProxy: Core response: No message received");
		}

		// Evaluate process result
		Message msg = reader.readMessage(config, text);

		if (msg.getData(F_RESPONSE) != null
				&& msg.getData(F_RESPONSE).getField(F_RESPONSE_CODE) != null
				&& msg.getData(F_RESPONSE).getField(F_RESPONSE_CODE).getValue()
						.compareTo("000") != 0) {

			String error = msg.getData(F_RESPONSE).getField(F_RESPONSE_CODE)
					.getValue();

			String errorMessage = null;
			if (msg.getData(F_RESPONSE).getField(F_RESPONSE_MSG) != null) {
				errorMessage = msg.getData(F_RESPONSE).getField(F_RESPONSE_MSG)
						.getValue();
			}
			if (errorMessage == null) {
				throw new RuntimeException("Processing Error: " + error);
			} else {
				errorMessage = errorMessage.replaceAll("\\^NL", "\n");
				throw new RuntimeException("Processing Error: " + error
						+ ". \nMessage:\n" + errorMessage);
			}

		}
		
		return msg;
	}

	protected String generateUrl(Object loadConfig) {
		StringBuffer sb = new StringBuffer();
		if (loadConfig instanceof ModelData) {
			Map<String, Object> map = ((ModelData) loadConfig).getProperties();
			for (String key : map.keySet()) {
				sb.append("&" + key + "=" + map.get(key));
			}
		}
		if (sb.length() > 0) {
			return sb.substring(1, sb.length());
		}
		return sb.toString();
	}

	private native void setUrl(RequestBuilder rb, String url) /*-{
		rb.@com.google.gwt.http.client.RequestBuilder::url = url;
	}-*/;

}
