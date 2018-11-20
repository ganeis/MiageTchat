/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ganeistan
 */
@Entity
@Table(name = "Tchat")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Tchat.findAll", query = "SELECT t FROM Tchat t")
    , @NamedQuery(name = "Tchat.findByMsgId", query = "SELECT t FROM Tchat t WHERE t.msgId = :msgId")
    , @NamedQuery(name = "Tchat.findByText", query = "SELECT t FROM Tchat t WHERE t.text = :text")
    , @NamedQuery(name = "Tchat.findByDate", query = "SELECT t FROM Tchat t WHERE t.date = :date")
    , @NamedQuery(name = "Tchat.findByAuthor", query = "SELECT t FROM Tchat t WHERE t.author = :author")})
public class Tchat implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "MsgId")
    private Integer msgId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 2000)
    @Column(name = "Text")
    private String text;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date date;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 500)
    @Column(name = "Author")
    private String author;

    public Tchat() {
    }

    public Tchat(Integer msgId) {
        this.msgId = msgId;
    }

    public Tchat(Integer msgId, String text, Date date, String author) {
        this.msgId = msgId;
        this.text = text;
        this.date = date;
        this.author = author;
    }

    public Integer getMsgId() {
        return msgId;
    }

    public void setMsgId(Integer msgId) {
        this.msgId = msgId;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (msgId != null ? msgId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Tchat)) {
            return false;
        }
        Tchat other = (Tchat) object;
        if ((this.msgId == null && other.msgId != null) || (this.msgId != null && !this.msgId.equals(other.msgId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "DAO.Tchat[ msgId=" + msgId + " ]";
    }
    
}
