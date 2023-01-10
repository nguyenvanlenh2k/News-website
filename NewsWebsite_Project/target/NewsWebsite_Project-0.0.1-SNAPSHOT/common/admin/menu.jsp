<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<aside class="app-sidebar">
    <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src='<c:url value ='/image/admin/logo/MyLogo.jpg' />' width="50px" alt="User Image">
      <div>
        <p class="app-sidebar__user-name"><b>Lênh Nguyễn</b></p>
        <p class="app-sidebar__user-designation">Chào mừng bạn trở lại</p>
      </div>
    </div>
    <hr>
    <ul class="app-menu">
     
      <li><a class="app-menu__item " href="admin-home"><i class="app-menu__icon bx bx-tachometer"></i><span class="app-menu__label">Bảng điều khiển</span></a></li>
      <li><a class="app-menu__item " href="admin-account"><i class="app-menu__icon bx bx-id-card"></i>
          <span class="app-menu__label">Quản lý tài khoản</span></a></li>
      <li><a class="app-menu__item" href="admin-category"><i class="app-menu__icon bx bx-user-voice"></i><span class="app-menu__label">Quản lý chủ đề</span></a></li>
      <li><a class="app-menu__item" href="admin-posts"><i class="app-menu__icon bx bx-purchase-tag-alt"></i><span class="app-menu__label">Quản lý bài báo</span></a>
      </li>
      
      
    </ul>
  </aside>