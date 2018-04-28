package com.lym.manager.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * @author 
 */
public class ContractInfo implements Serializable {
    private Integer id;

    /**
     * 大区
     */
    private String bigArea;

    /**
     * 城市
     */
    private String city;

    /**
     * 合同名称
     */
    private String contractName;

    /**
     * 签署日期
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date signDate;

    /**
     * 签署人
     */
    private String signPerson;

    /**
     * 合同到期时间
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date invalidDate;

    /**
     * 设备数量
     */
    private Integer deviceNum;

    /**
     * 设备编号
     */
    private String deviceInfo;

    /**
     * 每台租金
     */
    private String rentPer;

    /**
     * 支付方式
     */
    private String payment;

    /**
     * 近期支付时间
     */
    private String payDateRecent;

    /**
     * 下次支付时间
     */
    private String payDateNext;

    /**
     * 备注
     */
    private String comments;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBigArea() {
        return bigArea;
    }

    public void setBigArea(String bigArea) {
        this.bigArea = bigArea;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getContractName() {
        return contractName;
    }

    public void setContractName(String contractName) {
        this.contractName = contractName;
    }

    public Date getSignDate() {
        return signDate;
    }

    public void setSignDate(Date signDate) {
        this.signDate = signDate;
    }

    public String getSignPerson() {
        return signPerson;
    }

    public void setSignPerson(String signPerson) {
        this.signPerson = signPerson;
    }

    public Date getInvalidDate() {
        return invalidDate;
    }

    public void setInvalidDate(Date invalidDate) {
        this.invalidDate = invalidDate;
    }

    public Integer getDeviceNum() {
        return deviceNum;
    }

    public void setDeviceNum(Integer deviceNum) {
        this.deviceNum = deviceNum;
    }

    public String getDeviceInfo() {
        return deviceInfo;
    }

    public void setDeviceInfo(String deviceInfo) {
        this.deviceInfo = deviceInfo;
    }

    public String getRentPer() {
        return rentPer;
    }

    public void setRentPer(String rentPer) {
        this.rentPer = rentPer;
    }

    public String getPayment() {
        return payment;
    }

    public void setPayment(String payment) {
        this.payment = payment;
    }

    public String getPayDateRecent() {
        return payDateRecent;
    }

    public void setPayDateRecent(String payDateRecent) {
        this.payDateRecent = payDateRecent;
    }

    public String getPayDateNext() {
        return payDateNext;
    }

    public void setPayDateNext(String payDateNext) {
        this.payDateNext = payDateNext;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        ContractInfo other = (ContractInfo) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getBigArea() == null ? other.getBigArea() == null : this.getBigArea().equals(other.getBigArea()))
            && (this.getCity() == null ? other.getCity() == null : this.getCity().equals(other.getCity()))
            && (this.getContractName() == null ? other.getContractName() == null : this.getContractName().equals(other.getContractName()))
            && (this.getSignDate() == null ? other.getSignDate() == null : this.getSignDate().equals(other.getSignDate()))
            && (this.getSignPerson() == null ? other.getSignPerson() == null : this.getSignPerson().equals(other.getSignPerson()))
            && (this.getInvalidDate() == null ? other.getInvalidDate() == null : this.getInvalidDate().equals(other.getInvalidDate()))
            && (this.getDeviceNum() == null ? other.getDeviceNum() == null : this.getDeviceNum().equals(other.getDeviceNum()))
            && (this.getDeviceInfo() == null ? other.getDeviceInfo() == null : this.getDeviceInfo().equals(other.getDeviceInfo()))
            && (this.getRentPer() == null ? other.getRentPer() == null : this.getRentPer().equals(other.getRentPer()))
            && (this.getPayment() == null ? other.getPayment() == null : this.getPayment().equals(other.getPayment()))
            && (this.getPayDateRecent() == null ? other.getPayDateRecent() == null : this.getPayDateRecent().equals(other.getPayDateRecent()))
            && (this.getPayDateNext() == null ? other.getPayDateNext() == null : this.getPayDateNext().equals(other.getPayDateNext()))
            && (this.getComments() == null ? other.getComments() == null : this.getComments().equals(other.getComments()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getBigArea() == null) ? 0 : getBigArea().hashCode());
        result = prime * result + ((getCity() == null) ? 0 : getCity().hashCode());
        result = prime * result + ((getContractName() == null) ? 0 : getContractName().hashCode());
        result = prime * result + ((getSignDate() == null) ? 0 : getSignDate().hashCode());
        result = prime * result + ((getSignPerson() == null) ? 0 : getSignPerson().hashCode());
        result = prime * result + ((getInvalidDate() == null) ? 0 : getInvalidDate().hashCode());
        result = prime * result + ((getDeviceNum() == null) ? 0 : getDeviceNum().hashCode());
        result = prime * result + ((getDeviceInfo() == null) ? 0 : getDeviceInfo().hashCode());
        result = prime * result + ((getRentPer() == null) ? 0 : getRentPer().hashCode());
        result = prime * result + ((getPayment() == null) ? 0 : getPayment().hashCode());
        result = prime * result + ((getPayDateRecent() == null) ? 0 : getPayDateRecent().hashCode());
        result = prime * result + ((getPayDateNext() == null) ? 0 : getPayDateNext().hashCode());
        result = prime * result + ((getComments() == null) ? 0 : getComments().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", bigArea=").append(bigArea);
        sb.append(", city=").append(city);
        sb.append(", contractName=").append(contractName);
        sb.append(", signDate=").append(signDate);
        sb.append(", signPerson=").append(signPerson);
        sb.append(", invalidDate=").append(invalidDate);
        sb.append(", deviceNum=").append(deviceNum);
        sb.append(", deviceInfo=").append(deviceInfo);
        sb.append(", rentPer=").append(rentPer);
        sb.append(", payment=").append(payment);
        sb.append(", payDateRecent=").append(payDateRecent);
        sb.append(", payDateNext=").append(payDateNext);
        sb.append(", comments=").append(comments);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}