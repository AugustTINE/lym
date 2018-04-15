package com.lym.manager.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ContractInfoExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    private Integer limit;

    private Integer offset;

    public ContractInfoExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    public void setLimit(Integer limit) {
        this.limit = limit;
    }

    public Integer getLimit() {
        return limit;
    }

    public void setOffset(Integer offset) {
        this.offset = offset;
    }

    public Integer getOffset() {
        return offset;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andBigAreaIsNull() {
            addCriterion("big_area is null");
            return (Criteria) this;
        }

        public Criteria andBigAreaIsNotNull() {
            addCriterion("big_area is not null");
            return (Criteria) this;
        }

        public Criteria andBigAreaEqualTo(String value) {
            addCriterion("big_area =", value, "bigArea");
            return (Criteria) this;
        }

        public Criteria andBigAreaNotEqualTo(String value) {
            addCriterion("big_area <>", value, "bigArea");
            return (Criteria) this;
        }

        public Criteria andBigAreaGreaterThan(String value) {
            addCriterion("big_area >", value, "bigArea");
            return (Criteria) this;
        }

        public Criteria andBigAreaGreaterThanOrEqualTo(String value) {
            addCriterion("big_area >=", value, "bigArea");
            return (Criteria) this;
        }

        public Criteria andBigAreaLessThan(String value) {
            addCriterion("big_area <", value, "bigArea");
            return (Criteria) this;
        }

        public Criteria andBigAreaLessThanOrEqualTo(String value) {
            addCriterion("big_area <=", value, "bigArea");
            return (Criteria) this;
        }

        public Criteria andBigAreaLike(String value) {
            addCriterion("big_area like", value, "bigArea");
            return (Criteria) this;
        }

        public Criteria andBigAreaNotLike(String value) {
            addCriterion("big_area not like", value, "bigArea");
            return (Criteria) this;
        }

        public Criteria andBigAreaIn(List<String> values) {
            addCriterion("big_area in", values, "bigArea");
            return (Criteria) this;
        }

        public Criteria andBigAreaNotIn(List<String> values) {
            addCriterion("big_area not in", values, "bigArea");
            return (Criteria) this;
        }

        public Criteria andBigAreaBetween(String value1, String value2) {
            addCriterion("big_area between", value1, value2, "bigArea");
            return (Criteria) this;
        }

        public Criteria andBigAreaNotBetween(String value1, String value2) {
            addCriterion("big_area not between", value1, value2, "bigArea");
            return (Criteria) this;
        }

        public Criteria andCityIsNull() {
            addCriterion("city is null");
            return (Criteria) this;
        }

        public Criteria andCityIsNotNull() {
            addCriterion("city is not null");
            return (Criteria) this;
        }

        public Criteria andCityEqualTo(String value) {
            addCriterion("city =", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityNotEqualTo(String value) {
            addCriterion("city <>", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityGreaterThan(String value) {
            addCriterion("city >", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityGreaterThanOrEqualTo(String value) {
            addCriterion("city >=", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityLessThan(String value) {
            addCriterion("city <", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityLessThanOrEqualTo(String value) {
            addCriterion("city <=", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityLike(String value) {
            addCriterion("city like", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityNotLike(String value) {
            addCriterion("city not like", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityIn(List<String> values) {
            addCriterion("city in", values, "city");
            return (Criteria) this;
        }

        public Criteria andCityNotIn(List<String> values) {
            addCriterion("city not in", values, "city");
            return (Criteria) this;
        }

        public Criteria andCityBetween(String value1, String value2) {
            addCriterion("city between", value1, value2, "city");
            return (Criteria) this;
        }

        public Criteria andCityNotBetween(String value1, String value2) {
            addCriterion("city not between", value1, value2, "city");
            return (Criteria) this;
        }

        public Criteria andContractNameIsNull() {
            addCriterion("contract_name is null");
            return (Criteria) this;
        }

        public Criteria andContractNameIsNotNull() {
            addCriterion("contract_name is not null");
            return (Criteria) this;
        }

        public Criteria andContractNameEqualTo(String value) {
            addCriterion("contract_name =", value, "contractName");
            return (Criteria) this;
        }

        public Criteria andContractNameNotEqualTo(String value) {
            addCriterion("contract_name <>", value, "contractName");
            return (Criteria) this;
        }

        public Criteria andContractNameGreaterThan(String value) {
            addCriterion("contract_name >", value, "contractName");
            return (Criteria) this;
        }

        public Criteria andContractNameGreaterThanOrEqualTo(String value) {
            addCriterion("contract_name >=", value, "contractName");
            return (Criteria) this;
        }

        public Criteria andContractNameLessThan(String value) {
            addCriterion("contract_name <", value, "contractName");
            return (Criteria) this;
        }

        public Criteria andContractNameLessThanOrEqualTo(String value) {
            addCriterion("contract_name <=", value, "contractName");
            return (Criteria) this;
        }

        public Criteria andContractNameLike(String value) {
            addCriterion("contract_name like", value, "contractName");
            return (Criteria) this;
        }

        public Criteria andContractNameNotLike(String value) {
            addCriterion("contract_name not like", value, "contractName");
            return (Criteria) this;
        }

        public Criteria andContractNameIn(List<String> values) {
            addCriterion("contract_name in", values, "contractName");
            return (Criteria) this;
        }

        public Criteria andContractNameNotIn(List<String> values) {
            addCriterion("contract_name not in", values, "contractName");
            return (Criteria) this;
        }

        public Criteria andContractNameBetween(String value1, String value2) {
            addCriterion("contract_name between", value1, value2, "contractName");
            return (Criteria) this;
        }

        public Criteria andContractNameNotBetween(String value1, String value2) {
            addCriterion("contract_name not between", value1, value2, "contractName");
            return (Criteria) this;
        }

        public Criteria andSignDateIsNull() {
            addCriterion("sign_date is null");
            return (Criteria) this;
        }

        public Criteria andSignDateIsNotNull() {
            addCriterion("sign_date is not null");
            return (Criteria) this;
        }

        public Criteria andSignDateEqualTo(Date value) {
            addCriterion("sign_date =", value, "signDate");
            return (Criteria) this;
        }

        public Criteria andSignDateNotEqualTo(Date value) {
            addCriterion("sign_date <>", value, "signDate");
            return (Criteria) this;
        }

        public Criteria andSignDateGreaterThan(Date value) {
            addCriterion("sign_date >", value, "signDate");
            return (Criteria) this;
        }

        public Criteria andSignDateGreaterThanOrEqualTo(Date value) {
            addCriterion("sign_date >=", value, "signDate");
            return (Criteria) this;
        }

        public Criteria andSignDateLessThan(Date value) {
            addCriterion("sign_date <", value, "signDate");
            return (Criteria) this;
        }

        public Criteria andSignDateLessThanOrEqualTo(Date value) {
            addCriterion("sign_date <=", value, "signDate");
            return (Criteria) this;
        }

        public Criteria andSignDateIn(List<Date> values) {
            addCriterion("sign_date in", values, "signDate");
            return (Criteria) this;
        }

        public Criteria andSignDateNotIn(List<Date> values) {
            addCriterion("sign_date not in", values, "signDate");
            return (Criteria) this;
        }

        public Criteria andSignDateBetween(Date value1, Date value2) {
            addCriterion("sign_date between", value1, value2, "signDate");
            return (Criteria) this;
        }

        public Criteria andSignDateNotBetween(Date value1, Date value2) {
            addCriterion("sign_date not between", value1, value2, "signDate");
            return (Criteria) this;
        }

        public Criteria andSignPersonIsNull() {
            addCriterion("sign_person is null");
            return (Criteria) this;
        }

        public Criteria andSignPersonIsNotNull() {
            addCriterion("sign_person is not null");
            return (Criteria) this;
        }

        public Criteria andSignPersonEqualTo(String value) {
            addCriterion("sign_person =", value, "signPerson");
            return (Criteria) this;
        }

        public Criteria andSignPersonNotEqualTo(String value) {
            addCriterion("sign_person <>", value, "signPerson");
            return (Criteria) this;
        }

        public Criteria andSignPersonGreaterThan(String value) {
            addCriterion("sign_person >", value, "signPerson");
            return (Criteria) this;
        }

        public Criteria andSignPersonGreaterThanOrEqualTo(String value) {
            addCriterion("sign_person >=", value, "signPerson");
            return (Criteria) this;
        }

        public Criteria andSignPersonLessThan(String value) {
            addCriterion("sign_person <", value, "signPerson");
            return (Criteria) this;
        }

        public Criteria andSignPersonLessThanOrEqualTo(String value) {
            addCriterion("sign_person <=", value, "signPerson");
            return (Criteria) this;
        }

        public Criteria andSignPersonLike(String value) {
            addCriterion("sign_person like", value, "signPerson");
            return (Criteria) this;
        }

        public Criteria andSignPersonNotLike(String value) {
            addCriterion("sign_person not like", value, "signPerson");
            return (Criteria) this;
        }

        public Criteria andSignPersonIn(List<String> values) {
            addCriterion("sign_person in", values, "signPerson");
            return (Criteria) this;
        }

        public Criteria andSignPersonNotIn(List<String> values) {
            addCriterion("sign_person not in", values, "signPerson");
            return (Criteria) this;
        }

        public Criteria andSignPersonBetween(String value1, String value2) {
            addCriterion("sign_person between", value1, value2, "signPerson");
            return (Criteria) this;
        }

        public Criteria andSignPersonNotBetween(String value1, String value2) {
            addCriterion("sign_person not between", value1, value2, "signPerson");
            return (Criteria) this;
        }

        public Criteria andInvalidDateIsNull() {
            addCriterion("invalid_date is null");
            return (Criteria) this;
        }

        public Criteria andInvalidDateIsNotNull() {
            addCriterion("invalid_date is not null");
            return (Criteria) this;
        }

        public Criteria andInvalidDateEqualTo(Date value) {
            addCriterion("invalid_date =", value, "invalidDate");
            return (Criteria) this;
        }

        public Criteria andInvalidDateNotEqualTo(Date value) {
            addCriterion("invalid_date <>", value, "invalidDate");
            return (Criteria) this;
        }

        public Criteria andInvalidDateGreaterThan(Date value) {
            addCriterion("invalid_date >", value, "invalidDate");
            return (Criteria) this;
        }

        public Criteria andInvalidDateGreaterThanOrEqualTo(Date value) {
            addCriterion("invalid_date >=", value, "invalidDate");
            return (Criteria) this;
        }

        public Criteria andInvalidDateLessThan(Date value) {
            addCriterion("invalid_date <", value, "invalidDate");
            return (Criteria) this;
        }

        public Criteria andInvalidDateLessThanOrEqualTo(Date value) {
            addCriterion("invalid_date <=", value, "invalidDate");
            return (Criteria) this;
        }

        public Criteria andInvalidDateIn(List<Date> values) {
            addCriterion("invalid_date in", values, "invalidDate");
            return (Criteria) this;
        }

        public Criteria andInvalidDateNotIn(List<Date> values) {
            addCriterion("invalid_date not in", values, "invalidDate");
            return (Criteria) this;
        }

        public Criteria andInvalidDateBetween(Date value1, Date value2) {
            addCriterion("invalid_date between", value1, value2, "invalidDate");
            return (Criteria) this;
        }

        public Criteria andInvalidDateNotBetween(Date value1, Date value2) {
            addCriterion("invalid_date not between", value1, value2, "invalidDate");
            return (Criteria) this;
        }

        public Criteria andDeviceNumIsNull() {
            addCriterion("device_num is null");
            return (Criteria) this;
        }

        public Criteria andDeviceNumIsNotNull() {
            addCriterion("device_num is not null");
            return (Criteria) this;
        }

        public Criteria andDeviceNumEqualTo(Integer value) {
            addCriterion("device_num =", value, "deviceNum");
            return (Criteria) this;
        }

        public Criteria andDeviceNumNotEqualTo(Integer value) {
            addCriterion("device_num <>", value, "deviceNum");
            return (Criteria) this;
        }

        public Criteria andDeviceNumGreaterThan(Integer value) {
            addCriterion("device_num >", value, "deviceNum");
            return (Criteria) this;
        }

        public Criteria andDeviceNumGreaterThanOrEqualTo(Integer value) {
            addCriterion("device_num >=", value, "deviceNum");
            return (Criteria) this;
        }

        public Criteria andDeviceNumLessThan(Integer value) {
            addCriterion("device_num <", value, "deviceNum");
            return (Criteria) this;
        }

        public Criteria andDeviceNumLessThanOrEqualTo(Integer value) {
            addCriterion("device_num <=", value, "deviceNum");
            return (Criteria) this;
        }

        public Criteria andDeviceNumIn(List<Integer> values) {
            addCriterion("device_num in", values, "deviceNum");
            return (Criteria) this;
        }

        public Criteria andDeviceNumNotIn(List<Integer> values) {
            addCriterion("device_num not in", values, "deviceNum");
            return (Criteria) this;
        }

        public Criteria andDeviceNumBetween(Integer value1, Integer value2) {
            addCriterion("device_num between", value1, value2, "deviceNum");
            return (Criteria) this;
        }

        public Criteria andDeviceNumNotBetween(Integer value1, Integer value2) {
            addCriterion("device_num not between", value1, value2, "deviceNum");
            return (Criteria) this;
        }

        public Criteria andDeviceInfoIsNull() {
            addCriterion("device_info is null");
            return (Criteria) this;
        }

        public Criteria andDeviceInfoIsNotNull() {
            addCriterion("device_info is not null");
            return (Criteria) this;
        }

        public Criteria andDeviceInfoEqualTo(String value) {
            addCriterion("device_info =", value, "deviceInfo");
            return (Criteria) this;
        }

        public Criteria andDeviceInfoNotEqualTo(String value) {
            addCriterion("device_info <>", value, "deviceInfo");
            return (Criteria) this;
        }

        public Criteria andDeviceInfoGreaterThan(String value) {
            addCriterion("device_info >", value, "deviceInfo");
            return (Criteria) this;
        }

        public Criteria andDeviceInfoGreaterThanOrEqualTo(String value) {
            addCriterion("device_info >=", value, "deviceInfo");
            return (Criteria) this;
        }

        public Criteria andDeviceInfoLessThan(String value) {
            addCriterion("device_info <", value, "deviceInfo");
            return (Criteria) this;
        }

        public Criteria andDeviceInfoLessThanOrEqualTo(String value) {
            addCriterion("device_info <=", value, "deviceInfo");
            return (Criteria) this;
        }

        public Criteria andDeviceInfoLike(String value) {
            addCriterion("device_info like", value, "deviceInfo");
            return (Criteria) this;
        }

        public Criteria andDeviceInfoNotLike(String value) {
            addCriterion("device_info not like", value, "deviceInfo");
            return (Criteria) this;
        }

        public Criteria andDeviceInfoIn(List<String> values) {
            addCriterion("device_info in", values, "deviceInfo");
            return (Criteria) this;
        }

        public Criteria andDeviceInfoNotIn(List<String> values) {
            addCriterion("device_info not in", values, "deviceInfo");
            return (Criteria) this;
        }

        public Criteria andDeviceInfoBetween(String value1, String value2) {
            addCriterion("device_info between", value1, value2, "deviceInfo");
            return (Criteria) this;
        }

        public Criteria andDeviceInfoNotBetween(String value1, String value2) {
            addCriterion("device_info not between", value1, value2, "deviceInfo");
            return (Criteria) this;
        }

        public Criteria andRentPerIsNull() {
            addCriterion("rent_per is null");
            return (Criteria) this;
        }

        public Criteria andRentPerIsNotNull() {
            addCriterion("rent_per is not null");
            return (Criteria) this;
        }

        public Criteria andRentPerEqualTo(String value) {
            addCriterion("rent_per =", value, "rentPer");
            return (Criteria) this;
        }

        public Criteria andRentPerNotEqualTo(String value) {
            addCriterion("rent_per <>", value, "rentPer");
            return (Criteria) this;
        }

        public Criteria andRentPerGreaterThan(String value) {
            addCriterion("rent_per >", value, "rentPer");
            return (Criteria) this;
        }

        public Criteria andRentPerGreaterThanOrEqualTo(String value) {
            addCriterion("rent_per >=", value, "rentPer");
            return (Criteria) this;
        }

        public Criteria andRentPerLessThan(String value) {
            addCriterion("rent_per <", value, "rentPer");
            return (Criteria) this;
        }

        public Criteria andRentPerLessThanOrEqualTo(String value) {
            addCriterion("rent_per <=", value, "rentPer");
            return (Criteria) this;
        }

        public Criteria andRentPerLike(String value) {
            addCriterion("rent_per like", value, "rentPer");
            return (Criteria) this;
        }

        public Criteria andRentPerNotLike(String value) {
            addCriterion("rent_per not like", value, "rentPer");
            return (Criteria) this;
        }

        public Criteria andRentPerIn(List<String> values) {
            addCriterion("rent_per in", values, "rentPer");
            return (Criteria) this;
        }

        public Criteria andRentPerNotIn(List<String> values) {
            addCriterion("rent_per not in", values, "rentPer");
            return (Criteria) this;
        }

        public Criteria andRentPerBetween(String value1, String value2) {
            addCriterion("rent_per between", value1, value2, "rentPer");
            return (Criteria) this;
        }

        public Criteria andRentPerNotBetween(String value1, String value2) {
            addCriterion("rent_per not between", value1, value2, "rentPer");
            return (Criteria) this;
        }

        public Criteria andPaymentIsNull() {
            addCriterion("payment is null");
            return (Criteria) this;
        }

        public Criteria andPaymentIsNotNull() {
            addCriterion("payment is not null");
            return (Criteria) this;
        }

        public Criteria andPaymentEqualTo(String value) {
            addCriterion("payment =", value, "payment");
            return (Criteria) this;
        }

        public Criteria andPaymentNotEqualTo(String value) {
            addCriterion("payment <>", value, "payment");
            return (Criteria) this;
        }

        public Criteria andPaymentGreaterThan(String value) {
            addCriterion("payment >", value, "payment");
            return (Criteria) this;
        }

        public Criteria andPaymentGreaterThanOrEqualTo(String value) {
            addCriterion("payment >=", value, "payment");
            return (Criteria) this;
        }

        public Criteria andPaymentLessThan(String value) {
            addCriterion("payment <", value, "payment");
            return (Criteria) this;
        }

        public Criteria andPaymentLessThanOrEqualTo(String value) {
            addCriterion("payment <=", value, "payment");
            return (Criteria) this;
        }

        public Criteria andPaymentLike(String value) {
            addCriterion("payment like", value, "payment");
            return (Criteria) this;
        }

        public Criteria andPaymentNotLike(String value) {
            addCriterion("payment not like", value, "payment");
            return (Criteria) this;
        }

        public Criteria andPaymentIn(List<String> values) {
            addCriterion("payment in", values, "payment");
            return (Criteria) this;
        }

        public Criteria andPaymentNotIn(List<String> values) {
            addCriterion("payment not in", values, "payment");
            return (Criteria) this;
        }

        public Criteria andPaymentBetween(String value1, String value2) {
            addCriterion("payment between", value1, value2, "payment");
            return (Criteria) this;
        }

        public Criteria andPaymentNotBetween(String value1, String value2) {
            addCriterion("payment not between", value1, value2, "payment");
            return (Criteria) this;
        }

        public Criteria andPayDateRecentIsNull() {
            addCriterion("pay_date_recent is null");
            return (Criteria) this;
        }

        public Criteria andPayDateRecentIsNotNull() {
            addCriterion("pay_date_recent is not null");
            return (Criteria) this;
        }

        public Criteria andPayDateRecentEqualTo(Date value) {
            addCriterion("pay_date_recent =", value, "payDateRecent");
            return (Criteria) this;
        }

        public Criteria andPayDateRecentNotEqualTo(Date value) {
            addCriterion("pay_date_recent <>", value, "payDateRecent");
            return (Criteria) this;
        }

        public Criteria andPayDateRecentGreaterThan(Date value) {
            addCriterion("pay_date_recent >", value, "payDateRecent");
            return (Criteria) this;
        }

        public Criteria andPayDateRecentGreaterThanOrEqualTo(Date value) {
            addCriterion("pay_date_recent >=", value, "payDateRecent");
            return (Criteria) this;
        }

        public Criteria andPayDateRecentLessThan(Date value) {
            addCriterion("pay_date_recent <", value, "payDateRecent");
            return (Criteria) this;
        }

        public Criteria andPayDateRecentLessThanOrEqualTo(Date value) {
            addCriterion("pay_date_recent <=", value, "payDateRecent");
            return (Criteria) this;
        }

        public Criteria andPayDateRecentIn(List<Date> values) {
            addCriterion("pay_date_recent in", values, "payDateRecent");
            return (Criteria) this;
        }

        public Criteria andPayDateRecentNotIn(List<Date> values) {
            addCriterion("pay_date_recent not in", values, "payDateRecent");
            return (Criteria) this;
        }

        public Criteria andPayDateRecentBetween(Date value1, Date value2) {
            addCriterion("pay_date_recent between", value1, value2, "payDateRecent");
            return (Criteria) this;
        }

        public Criteria andPayDateRecentNotBetween(Date value1, Date value2) {
            addCriterion("pay_date_recent not between", value1, value2, "payDateRecent");
            return (Criteria) this;
        }

        public Criteria andPayDateNextIsNull() {
            addCriterion("pay_date_next is null");
            return (Criteria) this;
        }

        public Criteria andPayDateNextIsNotNull() {
            addCriterion("pay_date_next is not null");
            return (Criteria) this;
        }

        public Criteria andPayDateNextEqualTo(Date value) {
            addCriterion("pay_date_next =", value, "payDateNext");
            return (Criteria) this;
        }

        public Criteria andPayDateNextNotEqualTo(Date value) {
            addCriterion("pay_date_next <>", value, "payDateNext");
            return (Criteria) this;
        }

        public Criteria andPayDateNextGreaterThan(Date value) {
            addCriterion("pay_date_next >", value, "payDateNext");
            return (Criteria) this;
        }

        public Criteria andPayDateNextGreaterThanOrEqualTo(Date value) {
            addCriterion("pay_date_next >=", value, "payDateNext");
            return (Criteria) this;
        }

        public Criteria andPayDateNextLessThan(Date value) {
            addCriterion("pay_date_next <", value, "payDateNext");
            return (Criteria) this;
        }

        public Criteria andPayDateNextLessThanOrEqualTo(Date value) {
            addCriterion("pay_date_next <=", value, "payDateNext");
            return (Criteria) this;
        }

        public Criteria andPayDateNextIn(List<Date> values) {
            addCriterion("pay_date_next in", values, "payDateNext");
            return (Criteria) this;
        }

        public Criteria andPayDateNextNotIn(List<Date> values) {
            addCriterion("pay_date_next not in", values, "payDateNext");
            return (Criteria) this;
        }

        public Criteria andPayDateNextBetween(Date value1, Date value2) {
            addCriterion("pay_date_next between", value1, value2, "payDateNext");
            return (Criteria) this;
        }

        public Criteria andPayDateNextNotBetween(Date value1, Date value2) {
            addCriterion("pay_date_next not between", value1, value2, "payDateNext");
            return (Criteria) this;
        }

        public Criteria andCommentsIsNull() {
            addCriterion("comments is null");
            return (Criteria) this;
        }

        public Criteria andCommentsIsNotNull() {
            addCriterion("comments is not null");
            return (Criteria) this;
        }

        public Criteria andCommentsEqualTo(String value) {
            addCriterion("comments =", value, "comments");
            return (Criteria) this;
        }

        public Criteria andCommentsNotEqualTo(String value) {
            addCriterion("comments <>", value, "comments");
            return (Criteria) this;
        }

        public Criteria andCommentsGreaterThan(String value) {
            addCriterion("comments >", value, "comments");
            return (Criteria) this;
        }

        public Criteria andCommentsGreaterThanOrEqualTo(String value) {
            addCriterion("comments >=", value, "comments");
            return (Criteria) this;
        }

        public Criteria andCommentsLessThan(String value) {
            addCriterion("comments <", value, "comments");
            return (Criteria) this;
        }

        public Criteria andCommentsLessThanOrEqualTo(String value) {
            addCriterion("comments <=", value, "comments");
            return (Criteria) this;
        }

        public Criteria andCommentsLike(String value) {
            addCriterion("comments like", value, "comments");
            return (Criteria) this;
        }

        public Criteria andCommentsNotLike(String value) {
            addCriterion("comments not like", value, "comments");
            return (Criteria) this;
        }

        public Criteria andCommentsIn(List<String> values) {
            addCriterion("comments in", values, "comments");
            return (Criteria) this;
        }

        public Criteria andCommentsNotIn(List<String> values) {
            addCriterion("comments not in", values, "comments");
            return (Criteria) this;
        }

        public Criteria andCommentsBetween(String value1, String value2) {
            addCriterion("comments between", value1, value2, "comments");
            return (Criteria) this;
        }

        public Criteria andCommentsNotBetween(String value1, String value2) {
            addCriterion("comments not between", value1, value2, "comments");
            return (Criteria) this;
        }
    }

    /**
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}