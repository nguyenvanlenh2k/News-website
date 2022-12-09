package model;

public class Comment extends AbstractModel{

	private String content;
	private User userId;
	private News newsId;
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public User getUserId() {
		return userId;
	}
	public void setUserId(User userId) {
		this.userId = userId;
	}
	public News getNewsId() {
		return newsId;
	}
	public void setNewsId(News newsId) {
		this.newsId = newsId;
	}
	@Override
	public String toString() {
		return "Comment [content=" + content + ", userId=" + userId + ", newsId=" + newsId + "]";
	}
	
	
}
