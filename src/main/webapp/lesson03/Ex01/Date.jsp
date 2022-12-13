<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<p>
	현재 시간: <%= Calendar.getInstance().getTime() %>
</p>