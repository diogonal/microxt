package mobile.web.webxt.client.data;

import java.util.ArrayList;
import java.util.List;

import mobile.common.tools.ProcessType;
import mobile.web.webxt.client.data.form.DataSource;
import mobile.web.webxt.client.data.form.Reference;

import com.extjs.gxt.ui.client.data.BaseFilterPagingLoadConfig;
import com.extjs.gxt.ui.client.data.BaseStringFilterConfig;
import com.extjs.gxt.ui.client.data.FilterConfig;

public class MyProcessConfig extends BaseFilterPagingLoadConfig {

	private static final long serialVersionUID = 1L;

	private String process;

	private ProcessType processType;

	private Reference reference;

	private List<DataSource> lDataSource;

	public MyProcessConfig(String process, Reference reference, List<DataSource> lFields) {
		this.process = process;
		this.reference = reference;
		this.lDataSource = lFields;
	}

	public MyProcessConfig(String process) {
		this.process = process;
		this.lDataSource = new ArrayList<DataSource>();
	}

	public void addFilter(String field, String value) {
		FilterConfig filter = new BaseStringFilterConfig();
		filter.setField(field);
		filter.setComparison("=");
		filter.setValue(value);
		addFilter(filter);
	}

	public void addFilter(FilterConfig filter) {
		List<FilterConfig> filters = getFilterConfigs();
		if (filters == null) {
			filters = new ArrayList<FilterConfig>();
		}

		boolean exists = false;
		for (FilterConfig fil : filters) {
			if (fil.getField().compareTo(filter.getField()) == 0) {
				exists = true;
				fil.setValue(filter.getValue());
			}
		}

		if (!exists) {
			filters.add(filter);
		}

		setFilterConfigs(filters);
	}

	public void removeFilter(String strFilter) {
		if (getFilterConfigs() != null) {
			FilterConfig filter = new BaseStringFilterConfig();
			filter.setField(strFilter);
			
			for (FilterConfig fil : getFilterConfigs()) {
				if (fil.getField().compareTo(filter.getField()) == 0) {
					getFilterConfigs().remove(fil);
					return;
				}
			}
		}
	}
	
	public void removeFilter(FilterConfig filter) {
		if (getFilterConfigs() != null) {
			for (FilterConfig fil : getFilterConfigs()) {
				if (fil.getField().compareTo(filter.getField()) == 0) {
					getFilterConfigs().remove(fil);
					return;
				}
			}
		}
	}

	public void addFilters(List<FilterConfig> lfilter) {
		for (FilterConfig filterConfig : lfilter) {
			addFilter(filterConfig);
		}
	}

	public void removeFilters(List<FilterConfig> delFilters) {
//		List<FilterConfig> delFilters = new ArrayList<FilterConfig>();
//		FilterConfig filterConfig = new BaseStringFilterConfig();
//		filterConfig.setField("Process_url");
//		delFilters.add(filterConfig);

		for (FilterConfig filter : delFilters) {
			removeFilter(filter);
		}
	}
	
	public void removeAllFilters() {
		setFilterConfigs(new ArrayList<FilterConfig>());
	}


	public String getProcess() {
		return process;
	}

	public void setProcess(String process) {
		this.process = process;
	}

	public Reference getReference() {
		return reference;
	}

	public void setReference(Reference reference) {
		this.reference = reference;
	}

	public ProcessType getProcessType() {
		return processType;
	}

	public void setProcessType(ProcessType processType) {
		this.processType = processType;
	}

	public List<DataSource> getlDataSource() {
		return lDataSource;
	}

	public void setlDataSource(List<DataSource> lDataSource) {
		this.lDataSource = lDataSource;
	}
}