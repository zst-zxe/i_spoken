package com.springmvc.pojo;

import java.util.ArrayList;
import java.util.List;

public class FundsExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public FundsExample() {
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

        public Criteria andFundsidIsNull() {
            addCriterion("fundsid is null");
            return (Criteria) this;
        }

        public Criteria andFundsidIsNotNull() {
            addCriterion("fundsid is not null");
            return (Criteria) this;
        }

        public Criteria andFundsidEqualTo(Integer value) {
            addCriterion("fundsid =", value, "fundsid");
            return (Criteria) this;
        }

        public Criteria andFundsidNotEqualTo(Integer value) {
            addCriterion("fundsid <>", value, "fundsid");
            return (Criteria) this;
        }

        public Criteria andFundsidGreaterThan(Integer value) {
            addCriterion("fundsid >", value, "fundsid");
            return (Criteria) this;
        }

        public Criteria andFundsidGreaterThanOrEqualTo(Integer value) {
            addCriterion("fundsid >=", value, "fundsid");
            return (Criteria) this;
        }

        public Criteria andFundsidLessThan(Integer value) {
            addCriterion("fundsid <", value, "fundsid");
            return (Criteria) this;
        }

        public Criteria andFundsidLessThanOrEqualTo(Integer value) {
            addCriterion("fundsid <=", value, "fundsid");
            return (Criteria) this;
        }

        public Criteria andFundsidIn(List<Integer> values) {
            addCriterion("fundsid in", values, "fundsid");
            return (Criteria) this;
        }

        public Criteria andFundsidNotIn(List<Integer> values) {
            addCriterion("fundsid not in", values, "fundsid");
            return (Criteria) this;
        }

        public Criteria andFundsidBetween(Integer value1, Integer value2) {
            addCriterion("fundsid between", value1, value2, "fundsid");
            return (Criteria) this;
        }

        public Criteria andFundsidNotBetween(Integer value1, Integer value2) {
            addCriterion("fundsid not between", value1, value2, "fundsid");
            return (Criteria) this;
        }

        public Criteria andFundsnumIsNull() {
            addCriterion("fundsnum is null");
            return (Criteria) this;
        }

        public Criteria andFundsnumIsNotNull() {
            addCriterion("fundsnum is not null");
            return (Criteria) this;
        }

        public Criteria andFundsnumEqualTo(Double value) {
            addCriterion("fundsnum =", value, "fundsnum");
            return (Criteria) this;
        }

        public Criteria andFundsnumNotEqualTo(Double value) {
            addCriterion("fundsnum <>", value, "fundsnum");
            return (Criteria) this;
        }

        public Criteria andFundsnumGreaterThan(Double value) {
            addCriterion("fundsnum >", value, "fundsnum");
            return (Criteria) this;
        }

        public Criteria andFundsnumGreaterThanOrEqualTo(Double value) {
            addCriterion("fundsnum >=", value, "fundsnum");
            return (Criteria) this;
        }

        public Criteria andFundsnumLessThan(Double value) {
            addCriterion("fundsnum <", value, "fundsnum");
            return (Criteria) this;
        }

        public Criteria andFundsnumLessThanOrEqualTo(Double value) {
            addCriterion("fundsnum <=", value, "fundsnum");
            return (Criteria) this;
        }

        public Criteria andFundsnumIn(List<Double> values) {
            addCriterion("fundsnum in", values, "fundsnum");
            return (Criteria) this;
        }

        public Criteria andFundsnumNotIn(List<Double> values) {
            addCriterion("fundsnum not in", values, "fundsnum");
            return (Criteria) this;
        }

        public Criteria andFundsnumBetween(Double value1, Double value2) {
            addCriterion("fundsnum between", value1, value2, "fundsnum");
            return (Criteria) this;
        }

        public Criteria andFundsnumNotBetween(Double value1, Double value2) {
            addCriterion("fundsnum not between", value1, value2, "fundsnum");
            return (Criteria) this;
        }

        public Criteria andFundscreatetimeIsNull() {
            addCriterion("fundscreatetime is null");
            return (Criteria) this;
        }

        public Criteria andFundscreatetimeIsNotNull() {
            addCriterion("fundscreatetime is not null");
            return (Criteria) this;
        }

        public Criteria andFundscreatetimeEqualTo(String value) {
            addCriterion("fundscreatetime =", value, "fundscreatetime");
            return (Criteria) this;
        }

        public Criteria andFundscreatetimeNotEqualTo(String value) {
            addCriterion("fundscreatetime <>", value, "fundscreatetime");
            return (Criteria) this;
        }

        public Criteria andFundscreatetimeGreaterThan(String value) {
            addCriterion("fundscreatetime >", value, "fundscreatetime");
            return (Criteria) this;
        }

        public Criteria andFundscreatetimeGreaterThanOrEqualTo(String value) {
            addCriterion("fundscreatetime >=", value, "fundscreatetime");
            return (Criteria) this;
        }

        public Criteria andFundscreatetimeLessThan(String value) {
            addCriterion("fundscreatetime <", value, "fundscreatetime");
            return (Criteria) this;
        }

        public Criteria andFundscreatetimeLessThanOrEqualTo(String value) {
            addCriterion("fundscreatetime <=", value, "fundscreatetime");
            return (Criteria) this;
        }

        public Criteria andFundscreatetimeLike(String value) {
            addCriterion("fundscreatetime like", value, "fundscreatetime");
            return (Criteria) this;
        }

        public Criteria andFundscreatetimeNotLike(String value) {
            addCriterion("fundscreatetime not like", value, "fundscreatetime");
            return (Criteria) this;
        }

        public Criteria andFundscreatetimeIn(List<String> values) {
            addCriterion("fundscreatetime in", values, "fundscreatetime");
            return (Criteria) this;
        }

        public Criteria andFundscreatetimeNotIn(List<String> values) {
            addCriterion("fundscreatetime not in", values, "fundscreatetime");
            return (Criteria) this;
        }

        public Criteria andFundscreatetimeBetween(String value1, String value2) {
            addCriterion("fundscreatetime between", value1, value2, "fundscreatetime");
            return (Criteria) this;
        }

        public Criteria andFundscreatetimeNotBetween(String value1, String value2) {
            addCriterion("fundscreatetime not between", value1, value2, "fundscreatetime");
            return (Criteria) this;
        }

        public Criteria andUseridIsNull() {
            addCriterion("userid is null");
            return (Criteria) this;
        }

        public Criteria andUseridIsNotNull() {
            addCriterion("userid is not null");
            return (Criteria) this;
        }

        public Criteria andUseridEqualTo(Integer value) {
            addCriterion("userid =", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotEqualTo(Integer value) {
            addCriterion("userid <>", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridGreaterThan(Integer value) {
            addCriterion("userid >", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridGreaterThanOrEqualTo(Integer value) {
            addCriterion("userid >=", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridLessThan(Integer value) {
            addCriterion("userid <", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridLessThanOrEqualTo(Integer value) {
            addCriterion("userid <=", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridIn(List<Integer> values) {
            addCriterion("userid in", values, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotIn(List<Integer> values) {
            addCriterion("userid not in", values, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridBetween(Integer value1, Integer value2) {
            addCriterion("userid between", value1, value2, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotBetween(Integer value1, Integer value2) {
            addCriterion("userid not between", value1, value2, "userid");
            return (Criteria) this;
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