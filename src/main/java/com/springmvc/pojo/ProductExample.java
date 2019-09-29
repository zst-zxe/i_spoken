package com.springmvc.pojo;

import java.util.ArrayList;
import java.util.List;

public class ProductExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ProductExample() {
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

        public Criteria andProductidIsNull() {
            addCriterion("productid is null");
            return (Criteria) this;
        }

        public Criteria andProductidIsNotNull() {
            addCriterion("productid is not null");
            return (Criteria) this;
        }

        public Criteria andProductidEqualTo(Integer value) {
            addCriterion("productid =", value, "productid");
            return (Criteria) this;
        }

        public Criteria andProductidNotEqualTo(Integer value) {
            addCriterion("productid <>", value, "productid");
            return (Criteria) this;
        }

        public Criteria andProductidGreaterThan(Integer value) {
            addCriterion("productid >", value, "productid");
            return (Criteria) this;
        }

        public Criteria andProductidGreaterThanOrEqualTo(Integer value) {
            addCriterion("productid >=", value, "productid");
            return (Criteria) this;
        }

        public Criteria andProductidLessThan(Integer value) {
            addCriterion("productid <", value, "productid");
            return (Criteria) this;
        }

        public Criteria andProductidLessThanOrEqualTo(Integer value) {
            addCriterion("productid <=", value, "productid");
            return (Criteria) this;
        }

        public Criteria andProductidIn(List<Integer> values) {
            addCriterion("productid in", values, "productid");
            return (Criteria) this;
        }

        public Criteria andProductidNotIn(List<Integer> values) {
            addCriterion("productid not in", values, "productid");
            return (Criteria) this;
        }

        public Criteria andProductidBetween(Integer value1, Integer value2) {
            addCriterion("productid between", value1, value2, "productid");
            return (Criteria) this;
        }

        public Criteria andProductidNotBetween(Integer value1, Integer value2) {
            addCriterion("productid not between", value1, value2, "productid");
            return (Criteria) this;
        }

        public Criteria andProductnameIsNull() {
            addCriterion("productname is null");
            return (Criteria) this;
        }

        public Criteria andProductnameIsNotNull() {
            addCriterion("productname is not null");
            return (Criteria) this;
        }

        public Criteria andProductnameEqualTo(String value) {
            addCriterion("productname =", value, "productname");
            return (Criteria) this;
        }

        public Criteria andProductnameNotEqualTo(String value) {
            addCriterion("productname <>", value, "productname");
            return (Criteria) this;
        }

        public Criteria andProductnameGreaterThan(String value) {
            addCriterion("productname >", value, "productname");
            return (Criteria) this;
        }

        public Criteria andProductnameGreaterThanOrEqualTo(String value) {
            addCriterion("productname >=", value, "productname");
            return (Criteria) this;
        }

        public Criteria andProductnameLessThan(String value) {
            addCriterion("productname <", value, "productname");
            return (Criteria) this;
        }

        public Criteria andProductnameLessThanOrEqualTo(String value) {
            addCriterion("productname <=", value, "productname");
            return (Criteria) this;
        }

        public Criteria andProductnameLike(String value) {
            addCriterion("productname like", value, "productname");
            return (Criteria) this;
        }

        public Criteria andProductnameNotLike(String value) {
            addCriterion("productname not like", value, "productname");
            return (Criteria) this;
        }

        public Criteria andProductnameIn(List<String> values) {
            addCriterion("productname in", values, "productname");
            return (Criteria) this;
        }

        public Criteria andProductnameNotIn(List<String> values) {
            addCriterion("productname not in", values, "productname");
            return (Criteria) this;
        }

        public Criteria andProductnameBetween(String value1, String value2) {
            addCriterion("productname between", value1, value2, "productname");
            return (Criteria) this;
        }

        public Criteria andProductnameNotBetween(String value1, String value2) {
            addCriterion("productname not between", value1, value2, "productname");
            return (Criteria) this;
        }

        public Criteria andProductpriceIsNull() {
            addCriterion("productprice is null");
            return (Criteria) this;
        }

        public Criteria andProductpriceIsNotNull() {
            addCriterion("productprice is not null");
            return (Criteria) this;
        }

        public Criteria andProductpriceEqualTo(String value) {
            addCriterion("productprice =", value, "productprice");
            return (Criteria) this;
        }

        public Criteria andProductpriceNotEqualTo(String value) {
            addCriterion("productprice <>", value, "productprice");
            return (Criteria) this;
        }

        public Criteria andProductpriceGreaterThan(String value) {
            addCriterion("productprice >", value, "productprice");
            return (Criteria) this;
        }

        public Criteria andProductpriceGreaterThanOrEqualTo(String value) {
            addCriterion("productprice >=", value, "productprice");
            return (Criteria) this;
        }

        public Criteria andProductpriceLessThan(String value) {
            addCriterion("productprice <", value, "productprice");
            return (Criteria) this;
        }

        public Criteria andProductpriceLessThanOrEqualTo(String value) {
            addCriterion("productprice <=", value, "productprice");
            return (Criteria) this;
        }

        public Criteria andProductpriceLike(String value) {
            addCriterion("productprice like", value, "productprice");
            return (Criteria) this;
        }

        public Criteria andProductpriceNotLike(String value) {
            addCriterion("productprice not like", value, "productprice");
            return (Criteria) this;
        }

        public Criteria andProductpriceIn(List<String> values) {
            addCriterion("productprice in", values, "productprice");
            return (Criteria) this;
        }

        public Criteria andProductpriceNotIn(List<String> values) {
            addCriterion("productprice not in", values, "productprice");
            return (Criteria) this;
        }

        public Criteria andProductpriceBetween(String value1, String value2) {
            addCriterion("productprice between", value1, value2, "productprice");
            return (Criteria) this;
        }

        public Criteria andProductpriceNotBetween(String value1, String value2) {
            addCriterion("productprice not between", value1, value2, "productprice");
            return (Criteria) this;
        }

        public Criteria andProductdescriptionIsNull() {
            addCriterion("productdescription is null");
            return (Criteria) this;
        }

        public Criteria andProductdescriptionIsNotNull() {
            addCriterion("productdescription is not null");
            return (Criteria) this;
        }

        public Criteria andProductdescriptionEqualTo(String value) {
            addCriterion("productdescription =", value, "productdescription");
            return (Criteria) this;
        }

        public Criteria andProductdescriptionNotEqualTo(String value) {
            addCriterion("productdescription <>", value, "productdescription");
            return (Criteria) this;
        }

        public Criteria andProductdescriptionGreaterThan(String value) {
            addCriterion("productdescription >", value, "productdescription");
            return (Criteria) this;
        }

        public Criteria andProductdescriptionGreaterThanOrEqualTo(String value) {
            addCriterion("productdescription >=", value, "productdescription");
            return (Criteria) this;
        }

        public Criteria andProductdescriptionLessThan(String value) {
            addCriterion("productdescription <", value, "productdescription");
            return (Criteria) this;
        }

        public Criteria andProductdescriptionLessThanOrEqualTo(String value) {
            addCriterion("productdescription <=", value, "productdescription");
            return (Criteria) this;
        }

        public Criteria andProductdescriptionLike(String value) {
            addCriterion("productdescription like", value, "productdescription");
            return (Criteria) this;
        }

        public Criteria andProductdescriptionNotLike(String value) {
            addCriterion("productdescription not like", value, "productdescription");
            return (Criteria) this;
        }

        public Criteria andProductdescriptionIn(List<String> values) {
            addCriterion("productdescription in", values, "productdescription");
            return (Criteria) this;
        }

        public Criteria andProductdescriptionNotIn(List<String> values) {
            addCriterion("productdescription not in", values, "productdescription");
            return (Criteria) this;
        }

        public Criteria andProductdescriptionBetween(String value1, String value2) {
            addCriterion("productdescription between", value1, value2, "productdescription");
            return (Criteria) this;
        }

        public Criteria andProductdescriptionNotBetween(String value1, String value2) {
            addCriterion("productdescription not between", value1, value2, "productdescription");
            return (Criteria) this;
        }

        public Criteria andProductpicturenameIsNull() {
            addCriterion("productpicturename is null");
            return (Criteria) this;
        }

        public Criteria andProductpicturenameIsNotNull() {
            addCriterion("productpicturename is not null");
            return (Criteria) this;
        }

        public Criteria andProductpicturenameEqualTo(String value) {
            addCriterion("productpicturename =", value, "productpicturename");
            return (Criteria) this;
        }

        public Criteria andProductpicturenameNotEqualTo(String value) {
            addCriterion("productpicturename <>", value, "productpicturename");
            return (Criteria) this;
        }

        public Criteria andProductpicturenameGreaterThan(String value) {
            addCriterion("productpicturename >", value, "productpicturename");
            return (Criteria) this;
        }

        public Criteria andProductpicturenameGreaterThanOrEqualTo(String value) {
            addCriterion("productpicturename >=", value, "productpicturename");
            return (Criteria) this;
        }

        public Criteria andProductpicturenameLessThan(String value) {
            addCriterion("productpicturename <", value, "productpicturename");
            return (Criteria) this;
        }

        public Criteria andProductpicturenameLessThanOrEqualTo(String value) {
            addCriterion("productpicturename <=", value, "productpicturename");
            return (Criteria) this;
        }

        public Criteria andProductpicturenameLike(String value) {
            addCriterion("productpicturename like", value, "productpicturename");
            return (Criteria) this;
        }

        public Criteria andProductpicturenameNotLike(String value) {
            addCriterion("productpicturename not like", value, "productpicturename");
            return (Criteria) this;
        }

        public Criteria andProductpicturenameIn(List<String> values) {
            addCriterion("productpicturename in", values, "productpicturename");
            return (Criteria) this;
        }

        public Criteria andProductpicturenameNotIn(List<String> values) {
            addCriterion("productpicturename not in", values, "productpicturename");
            return (Criteria) this;
        }

        public Criteria andProductpicturenameBetween(String value1, String value2) {
            addCriterion("productpicturename between", value1, value2, "productpicturename");
            return (Criteria) this;
        }

        public Criteria andProductpicturenameNotBetween(String value1, String value2) {
            addCriterion("productpicturename not between", value1, value2, "productpicturename");
            return (Criteria) this;
        }

        public Criteria andProductpicturepathIsNull() {
            addCriterion("productpicturepath is null");
            return (Criteria) this;
        }

        public Criteria andProductpicturepathIsNotNull() {
            addCriterion("productpicturepath is not null");
            return (Criteria) this;
        }

        public Criteria andProductpicturepathEqualTo(String value) {
            addCriterion("productpicturepath =", value, "productpicturepath");
            return (Criteria) this;
        }

        public Criteria andProductpicturepathNotEqualTo(String value) {
            addCriterion("productpicturepath <>", value, "productpicturepath");
            return (Criteria) this;
        }

        public Criteria andProductpicturepathGreaterThan(String value) {
            addCriterion("productpicturepath >", value, "productpicturepath");
            return (Criteria) this;
        }

        public Criteria andProductpicturepathGreaterThanOrEqualTo(String value) {
            addCriterion("productpicturepath >=", value, "productpicturepath");
            return (Criteria) this;
        }

        public Criteria andProductpicturepathLessThan(String value) {
            addCriterion("productpicturepath <", value, "productpicturepath");
            return (Criteria) this;
        }

        public Criteria andProductpicturepathLessThanOrEqualTo(String value) {
            addCriterion("productpicturepath <=", value, "productpicturepath");
            return (Criteria) this;
        }

        public Criteria andProductpicturepathLike(String value) {
            addCriterion("productpicturepath like", value, "productpicturepath");
            return (Criteria) this;
        }

        public Criteria andProductpicturepathNotLike(String value) {
            addCriterion("productpicturepath not like", value, "productpicturepath");
            return (Criteria) this;
        }

        public Criteria andProductpicturepathIn(List<String> values) {
            addCriterion("productpicturepath in", values, "productpicturepath");
            return (Criteria) this;
        }

        public Criteria andProductpicturepathNotIn(List<String> values) {
            addCriterion("productpicturepath not in", values, "productpicturepath");
            return (Criteria) this;
        }

        public Criteria andProductpicturepathBetween(String value1, String value2) {
            addCriterion("productpicturepath between", value1, value2, "productpicturepath");
            return (Criteria) this;
        }

        public Criteria andProductpicturepathNotBetween(String value1, String value2) {
            addCriterion("productpicturepath not between", value1, value2, "productpicturepath");
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