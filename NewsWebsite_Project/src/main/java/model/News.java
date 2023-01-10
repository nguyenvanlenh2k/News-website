package model;

public class News extends AbstractModel{
	
	private String title;
	private String image;
	private String shortDescription;
	private String content;
	private Category categoryId ;
	private Author authorId ;
	
	public News() {
		authorId = new Author();
		categoryId = new Category();
	}
	
	public Author getAuthorId() {
		return authorId;
	}
	public void setAuthorId(Author authorId) {
		this.authorId = authorId;
	}
	@Override
	public String toString() {
		return "News [title=" + title + ", image=" + image + ", shortDescription=" + shortDescription + ", categoryId=" + categoryId + ", authorId=" + authorId + "]";
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getShortDescription() {
		return shortDescription;
	}
	public void setShortDescription(String shortDescription) {
		this.shortDescription = shortDescription;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Category getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(Category categoryId) {
		this.categoryId = categoryId;
	}
	
	

}
