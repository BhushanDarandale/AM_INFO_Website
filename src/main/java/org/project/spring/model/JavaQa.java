package org.project.spring.model;
// Generated Dec 20, 2017 12:45:06 PM by Hibernate Tools 4.0.1.Final

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * JavaQa generated by hbm2java
 */
@Entity
@Table(name = "java_qa", catalog = "aminfo")
public class JavaQa implements java.io.Serializable {

	private Integer id;
	private String course;
	private String chapter;
	private String question;
	private String answer;
	private String attachment;
	private String attachmentType;
	private Date datetime;
	private Integer status;
	private Integer totalView;

	public JavaQa() {
	}

	public JavaQa(Date datetime) {
		this.datetime = datetime;
	}

	public JavaQa(String course, String chapter, String question, String answer, String attachment,
			String attachmentType, Date datetime, Integer status, Integer totalView) {
		this.course = course;
		this.chapter = chapter;
		this.question = question;
		this.answer = answer;
		this.attachment = attachment;
		this.attachmentType = attachmentType;
		this.datetime = datetime;
		this.status = status;
		this.totalView = totalView;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "course", length = 50)
	public String getCourse() {
		return this.course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	@Column(name = "chapter", length = 50)
	public String getChapter() {
		return this.chapter;
	}

	public void setChapter(String chapter) {
		this.chapter = chapter;
	}

	@Column(name = "question", length = 2000)
	public String getQuestion() {
		return this.question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	@Column(name = "answer", length = 65535)
	public String getAnswer() {
		return this.answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	@Column(name = "attachment", length = 200)
	public String getAttachment() {
		return this.attachment;
	}

	public void setAttachment(String attachment) {
		this.attachment = attachment;
	}

	@Column(name = "attachment_type", length = 200)
	public String getAttachmentType() {
		return this.attachmentType;
	}

	public void setAttachmentType(String attachmentType) {
		this.attachmentType = attachmentType;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "datetime", nullable = false, length = 19)
	public Date getDatetime() {
		return this.datetime;
	}

	public void setDatetime(Date datetime) {
		this.datetime = datetime;
	}

	@Column(name = "status")
	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	@Column(name = "total_view")
	public Integer getTotalView() {
		return this.totalView;
	}

	public void setTotalView(Integer totalView) {
		this.totalView = totalView;
	}

}
