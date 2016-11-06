<%@page language="java" pageEncoding="gbk2312"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<s:set name=""/>

<s:property value />

<s:bean name="" id="">
	<s:param name="" value=""/>
</s:bean>

//jsp页面中的action标签
<action name="" executeResult="true">
	<result name="success">/success.jsp</result>
</action> 

<s:if test="">	
	<a href="">超链接</a>
</s:if>

<s:else>

</s:else>

<s:iterator  value="{1,2,3,4}" id="num">
	<s:property value="num"/>
</s:iterator>

//hibernate管理类
Configuration config = new Configuration.configure()
SessionFactory sessionFactory = config.buildSessionFactory()
Session session = sessionFactory.openSession()

//Hibernate生命周期
Transient(瞬时态)、Persient(持久态)、Detached(脱管态)

//Hibernate中的缓存
一级缓存、二级缓存
