package model;

public class Category extends AbstractModel {

	private String name;
	private String url_id;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUrl_id() {
		return url_id;
	}
	public void setUrl_id(String url_id) {
		this.url_id = url_id;
	}
	@Override
	public String toString() {
		return "Category [name=" + name + ", url_id=" + url_id + "]";
	}
	
	
	
}
