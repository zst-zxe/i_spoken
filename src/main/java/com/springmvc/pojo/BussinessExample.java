package com.springmvc.pojo;

import java.util.ArrayList;
import java.util.List;

public class BussinessExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public BussinessExample() {
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

        public Criteria andBussinessidIsNull() {
            addCriterion("bussinessid is null");
            return (Criteria) this;
        }

        public Criteria andBussinessidIsNotNull() {
            addCriterion("bussinessid is not null");
            return (Criteria) this;
        }

        public Criteria andBussinessidEqualTo(Integer value) {
            addCriterion("bussinessid =", value, "bussinessid");
            return (Criteria) this;
        }

        public Criteria andBussinessidNotEqualTo(Integer value) {
            addCriterion("bussinessid <>", value, "bussinessid");
            return (Criteria) this;
        }

        public Criteria andBussinessidGreaterThan(Integer value) {
            addCriterion("bussinessid >", value, "bussinessid");
            return (Criteria) this;
        }

        public Criteria andBussinessidGreaterThanOrEqualTo(Integer value) {
            addCriterion("bussinessid >=", value, "bussinessid");
            return (Criteria) this;
        }

        public Criteria andBussinessidLessThan(Integer value) {
            addCriterion("bussinessid <", value, "bussinessid");
            return (Criteria) this;
        }

        public Criteria andBussinessidLessThanOrEqualTo(Integer value) {
            addCriterion("bussinessid <=", value, "bussinessid");
            return (Criteria) this;
        }

        public Criteria andBussinessidIn(List<Integer> values) {
            addCriterion("bussinessid in", values, "bussinessid");
            return (Criteria) this;
        }

        public Criteria andBussinessidNotIn(List<Integer> values) {
            addCriterion("bussinessid not in", values, "bussinessid");
            return (Criteria) this;
        }

        public Criteria andBussinessidBetween(Integer value1, Integer value2) {
            addCriterion("bussinessid between", value1, value2, "bussinessid");
            return (Criteria) this;
        }

        public Criteria andBussinessidNotBetween(Integer value1, Integer value2) {
            addCriterion("bussinessid not between", value1, value2, "bussinessid");
            return (Criteria) this;
        }

        public Criteria andBussinessnameIsNull() {
            addCriterion("bussinessname is null");
            return (Criteria) this;
        }

        public Criteria andBussinessnameIsNotNull() {
            addCriterion("bussinessname is not null");
            return (Criteria) this;
        }

        public Criteria andBussinessnameEqualTo(String value) {
            addCriterion("bussinessname =", value, "bussinessname");
            return (Criteria) this;
        }

        public Criteria andBussinessnameNotEqualTo(String value) {
            addCriterion("bussinessname <>", value, "bussinessname");
            return (Criteria) this;
        }

        public Criteria andBussinessnameGreaterThan(String value) {
            addCriterion("bussinessname >", value, "bussinessname");
            return (Criteria) this;
        }

        public Criteria andBussinessnameGreaterThanOrEqualTo(String value) {
            addCriterion("bussinessname >=", value, "bussinessname");
            return (Criteria) this;
        }

        public Criteria andBussinessnameLessThan(String value) {
            addCriterion("bussinessname <", value, "bussinessname");
            return (Criteria) this;
        }

        public Criteria andBussinessnameLessThanOrEqualTo(String value) {
            addCriterion("bussinessname <=", value, "bussinessname");
            return (Criteria) this;
        }

        public Criteria andBussinessnameLike(String value) {
            addCriterion("bussinessname like", value, "bussinessname");
            return (Criteria) this;
        }

        public Criteria andBussinessnameNotLike(String value) {
            addCriterion("bussinessname not like", value, "bussinessname");
            return (Criteria) this;
        }

        public Criteria andBussinessnameIn(List<String> values) {
            addCriterion("bussinessname in", values, "bussinessname");
            return (Criteria) this;
        }

        public Criteria andBussinessnameNotIn(List<String> values) {
            addCriterion("bussinessname not in", values, "bussinessname");
            return (Criteria) this;
        }

        public Criteria andBussinessnameBetween(String value1, String value2) {
            addCriterion("bussinessname between", value1, value2, "bussinessname");
            return (Criteria) this;
        }

        public Criteria andBussinessnameNotBetween(String value1, String value2) {
            addCriterion("bussinessname not between", value1, value2, "bussinessname");
            return (Criteria) this;
        }

        public Criteria andBussinesssexIsNull() {
            addCriterion("bussinesssex is null");
            return (Criteria) this;
        }

        public Criteria andBussinesssexIsNotNull() {
            addCriterion("bussinesssex is not null");
            return (Criteria) this;
        }

        public Criteria andBussinesssexEqualTo(Integer value) {
            addCriterion("bussinesssex =", value, "bussinesssex");
            return (Criteria) this;
        }

        public Criteria andBussinesssexNotEqualTo(Integer value) {
            addCriterion("bussinesssex <>", value, "bussinesssex");
            return (Criteria) this;
        }

        public Criteria andBussinesssexGreaterThan(Integer value) {
            addCriterion("bussinesssex >", value, "bussinesssex");
            return (Criteria) this;
        }

        public Criteria andBussinesssexGreaterThanOrEqualTo(Integer value) {
            addCriterion("bussinesssex >=", value, "bussinesssex");
            return (Criteria) this;
        }

        public Criteria andBussinesssexLessThan(Integer value) {
            addCriterion("bussinesssex <", value, "bussinesssex");
            return (Criteria) this;
        }

        public Criteria andBussinesssexLessThanOrEqualTo(Integer value) {
            addCriterion("bussinesssex <=", value, "bussinesssex");
            return (Criteria) this;
        }

        public Criteria andBussinesssexIn(List<Integer> values) {
            addCriterion("bussinesssex in", values, "bussinesssex");
            return (Criteria) this;
        }

        public Criteria andBussinesssexNotIn(List<Integer> values) {
            addCriterion("bussinesssex not in", values, "bussinesssex");
            return (Criteria) this;
        }

        public Criteria andBussinesssexBetween(Integer value1, Integer value2) {
            addCriterion("bussinesssex between", value1, value2, "bussinesssex");
            return (Criteria) this;
        }

        public Criteria andBussinesssexNotBetween(Integer value1, Integer value2) {
            addCriterion("bussinesssex not between", value1, value2, "bussinesssex");
            return (Criteria) this;
        }

        public Criteria andBussinessphoneIsNull() {
            addCriterion("bussinessphone is null");
            return (Criteria) this;
        }

        public Criteria andBussinessphoneIsNotNull() {
            addCriterion("bussinessphone is not null");
            return (Criteria) this;
        }

        public Criteria andBussinessphoneEqualTo(String value) {
            addCriterion("bussinessphone =", value, "bussinessphone");
            return (Criteria) this;
        }

        public Criteria andBussinessphoneNotEqualTo(String value) {
            addCriterion("bussinessphone <>", value, "bussinessphone");
            return (Criteria) this;
        }

        public Criteria andBussinessphoneGreaterThan(String value) {
            addCriterion("bussinessphone >", value, "bussinessphone");
            return (Criteria) this;
        }

        public Criteria andBussinessphoneGreaterThanOrEqualTo(String value) {
            addCriterion("bussinessphone >=", value, "bussinessphone");
            return (Criteria) this;
        }

        public Criteria andBussinessphoneLessThan(String value) {
            addCriterion("bussinessphone <", value, "bussinessphone");
            return (Criteria) this;
        }

        public Criteria andBussinessphoneLessThanOrEqualTo(String value) {
            addCriterion("bussinessphone <=", value, "bussinessphone");
            return (Criteria) this;
        }

        public Criteria andBussinessphoneLike(String value) {
            addCriterion("bussinessphone like", value, "bussinessphone");
            return (Criteria) this;
        }

        public Criteria andBussinessphoneNotLike(String value) {
            addCriterion("bussinessphone not like", value, "bussinessphone");
            return (Criteria) this;
        }

        public Criteria andBussinessphoneIn(List<String> values) {
            addCriterion("bussinessphone in", values, "bussinessphone");
            return (Criteria) this;
        }

        public Criteria andBussinessphoneNotIn(List<String> values) {
            addCriterion("bussinessphone not in", values, "bussinessphone");
            return (Criteria) this;
        }

        public Criteria andBussinessphoneBetween(String value1, String value2) {
            addCriterion("bussinessphone between", value1, value2, "bussinessphone");
            return (Criteria) this;
        }

        public Criteria andBussinessphoneNotBetween(String value1, String value2) {
            addCriterion("bussinessphone not between", value1, value2, "bussinessphone");
            return (Criteria) this;
        }

        public Criteria andBussinesscardIsNull() {
            addCriterion("bussinesscard is null");
            return (Criteria) this;
        }

        public Criteria andBussinesscardIsNotNull() {
            addCriterion("bussinesscard is not null");
            return (Criteria) this;
        }

        public Criteria andBussinesscardEqualTo(String value) {
            addCriterion("bussinesscard =", value, "bussinesscard");
            return (Criteria) this;
        }

        public Criteria andBussinesscardNotEqualTo(String value) {
            addCriterion("bussinesscard <>", value, "bussinesscard");
            return (Criteria) this;
        }

        public Criteria andBussinesscardGreaterThan(String value) {
            addCriterion("bussinesscard >", value, "bussinesscard");
            return (Criteria) this;
        }

        public Criteria andBussinesscardGreaterThanOrEqualTo(String value) {
            addCriterion("bussinesscard >=", value, "bussinesscard");
            return (Criteria) this;
        }

        public Criteria andBussinesscardLessThan(String value) {
            addCriterion("bussinesscard <", value, "bussinesscard");
            return (Criteria) this;
        }

        public Criteria andBussinesscardLessThanOrEqualTo(String value) {
            addCriterion("bussinesscard <=", value, "bussinesscard");
            return (Criteria) this;
        }

        public Criteria andBussinesscardLike(String value) {
            addCriterion("bussinesscard like", value, "bussinesscard");
            return (Criteria) this;
        }

        public Criteria andBussinesscardNotLike(String value) {
            addCriterion("bussinesscard not like", value, "bussinesscard");
            return (Criteria) this;
        }

        public Criteria andBussinesscardIn(List<String> values) {
            addCriterion("bussinesscard in", values, "bussinesscard");
            return (Criteria) this;
        }

        public Criteria andBussinesscardNotIn(List<String> values) {
            addCriterion("bussinesscard not in", values, "bussinesscard");
            return (Criteria) this;
        }

        public Criteria andBussinesscardBetween(String value1, String value2) {
            addCriterion("bussinesscard between", value1, value2, "bussinesscard");
            return (Criteria) this;
        }

        public Criteria andBussinesscardNotBetween(String value1, String value2) {
            addCriterion("bussinesscard not between", value1, value2, "bussinesscard");
            return (Criteria) this;
        }

        public Criteria andBussinessfundsnumIsNull() {
            addCriterion("bussinessfundsnum is null");
            return (Criteria) this;
        }

        public Criteria andBussinessfundsnumIsNotNull() {
            addCriterion("bussinessfundsnum is not null");
            return (Criteria) this;
        }

        public Criteria andBussinessfundsnumEqualTo(Double value) {
            addCriterion("bussinessfundsnum =", value, "bussinessfundsnum");
            return (Criteria) this;
        }

        public Criteria andBussinessfundsnumNotEqualTo(Double value) {
            addCriterion("bussinessfundsnum <>", value, "bussinessfundsnum");
            return (Criteria) this;
        }

        public Criteria andBussinessfundsnumGreaterThan(Double value) {
            addCriterion("bussinessfundsnum >", value, "bussinessfundsnum");
            return (Criteria) this;
        }

        public Criteria andBussinessfundsnumGreaterThanOrEqualTo(Double value) {
            addCriterion("bussinessfundsnum >=", value, "bussinessfundsnum");
            return (Criteria) this;
        }

        public Criteria andBussinessfundsnumLessThan(Double value) {
            addCriterion("bussinessfundsnum <", value, "bussinessfundsnum");
            return (Criteria) this;
        }

        public Criteria andBussinessfundsnumLessThanOrEqualTo(Double value) {
            addCriterion("bussinessfundsnum <=", value, "bussinessfundsnum");
            return (Criteria) this;
        }

        public Criteria andBussinessfundsnumIn(List<Double> values) {
            addCriterion("bussinessfundsnum in", values, "bussinessfundsnum");
            return (Criteria) this;
        }

        public Criteria andBussinessfundsnumNotIn(List<Double> values) {
            addCriterion("bussinessfundsnum not in", values, "bussinessfundsnum");
            return (Criteria) this;
        }

        public Criteria andBussinessfundsnumBetween(Double value1, Double value2) {
            addCriterion("bussinessfundsnum between", value1, value2, "bussinessfundsnum");
            return (Criteria) this;
        }

        public Criteria andBussinessfundsnumNotBetween(Double value1, Double value2) {
            addCriterion("bussinessfundsnum not between", value1, value2, "bussinessfundsnum");
            return (Criteria) this;
        }

        public Criteria andBussinnessshopnameIsNull() {
            addCriterion("bussinnessshopname is null");
            return (Criteria) this;
        }

        public Criteria andBussinnessshopnameIsNotNull() {
            addCriterion("bussinnessshopname is not null");
            return (Criteria) this;
        }

        public Criteria andBussinnessshopnameEqualTo(String value) {
            addCriterion("bussinnessshopname =", value, "bussinnessshopname");
            return (Criteria) this;
        }

        public Criteria andBussinnessshopnameNotEqualTo(String value) {
            addCriterion("bussinnessshopname <>", value, "bussinnessshopname");
            return (Criteria) this;
        }

        public Criteria andBussinnessshopnameGreaterThan(String value) {
            addCriterion("bussinnessshopname >", value, "bussinnessshopname");
            return (Criteria) this;
        }

        public Criteria andBussinnessshopnameGreaterThanOrEqualTo(String value) {
            addCriterion("bussinnessshopname >=", value, "bussinnessshopname");
            return (Criteria) this;
        }

        public Criteria andBussinnessshopnameLessThan(String value) {
            addCriterion("bussinnessshopname <", value, "bussinnessshopname");
            return (Criteria) this;
        }

        public Criteria andBussinnessshopnameLessThanOrEqualTo(String value) {
            addCriterion("bussinnessshopname <=", value, "bussinnessshopname");
            return (Criteria) this;
        }

        public Criteria andBussinnessshopnameLike(String value) {
            addCriterion("bussinnessshopname like", value, "bussinnessshopname");
            return (Criteria) this;
        }

        public Criteria andBussinnessshopnameNotLike(String value) {
            addCriterion("bussinnessshopname not like", value, "bussinnessshopname");
            return (Criteria) this;
        }

        public Criteria andBussinnessshopnameIn(List<String> values) {
            addCriterion("bussinnessshopname in", values, "bussinnessshopname");
            return (Criteria) this;
        }

        public Criteria andBussinnessshopnameNotIn(List<String> values) {
            addCriterion("bussinnessshopname not in", values, "bussinnessshopname");
            return (Criteria) this;
        }

        public Criteria andBussinnessshopnameBetween(String value1, String value2) {
            addCriterion("bussinnessshopname between", value1, value2, "bussinnessshopname");
            return (Criteria) this;
        }

        public Criteria andBussinnessshopnameNotBetween(String value1, String value2) {
            addCriterion("bussinnessshopname not between", value1, value2, "bussinnessshopname");
            return (Criteria) this;
        }

        public Criteria andBussinesspasswordIsNull() {
            addCriterion("bussinesspassword is null");
            return (Criteria) this;
        }

        public Criteria andBussinesspasswordIsNotNull() {
            addCriterion("bussinesspassword is not null");
            return (Criteria) this;
        }

        public Criteria andBussinesspasswordEqualTo(String value) {
            addCriterion("bussinesspassword =", value, "bussinesspassword");
            return (Criteria) this;
        }

        public Criteria andBussinesspasswordNotEqualTo(String value) {
            addCriterion("bussinesspassword <>", value, "bussinesspassword");
            return (Criteria) this;
        }

        public Criteria andBussinesspasswordGreaterThan(String value) {
            addCriterion("bussinesspassword >", value, "bussinesspassword");
            return (Criteria) this;
        }

        public Criteria andBussinesspasswordGreaterThanOrEqualTo(String value) {
            addCriterion("bussinesspassword >=", value, "bussinesspassword");
            return (Criteria) this;
        }

        public Criteria andBussinesspasswordLessThan(String value) {
            addCriterion("bussinesspassword <", value, "bussinesspassword");
            return (Criteria) this;
        }

        public Criteria andBussinesspasswordLessThanOrEqualTo(String value) {
            addCriterion("bussinesspassword <=", value, "bussinesspassword");
            return (Criteria) this;
        }

        public Criteria andBussinesspasswordLike(String value) {
            addCriterion("bussinesspassword like", value, "bussinesspassword");
            return (Criteria) this;
        }

        public Criteria andBussinesspasswordNotLike(String value) {
            addCriterion("bussinesspassword not like", value, "bussinesspassword");
            return (Criteria) this;
        }

        public Criteria andBussinesspasswordIn(List<String> values) {
            addCriterion("bussinesspassword in", values, "bussinesspassword");
            return (Criteria) this;
        }

        public Criteria andBussinesspasswordNotIn(List<String> values) {
            addCriterion("bussinesspassword not in", values, "bussinesspassword");
            return (Criteria) this;
        }

        public Criteria andBussinesspasswordBetween(String value1, String value2) {
            addCriterion("bussinesspassword between", value1, value2, "bussinesspassword");
            return (Criteria) this;
        }

        public Criteria andBussinesspasswordNotBetween(String value1, String value2) {
            addCriterion("bussinesspassword not between", value1, value2, "bussinesspassword");
            return (Criteria) this;
        }
    }

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