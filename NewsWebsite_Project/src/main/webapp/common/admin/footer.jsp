<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

         <div class="modal fade show" id="ModalUP" tabindex="-1" role="dialog" data-backdrop="static" data-keyboard="false" style="display: none; padding-right: 17px;">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">

        <div class="modal-body">
          <div class="row">
            <div class="form-group  col-md-12">
              <span class="thong-tin-thanh-toan">
                <h5>Chỉnh sửa tài khoản</h5>
              </span>
            </div>
          </div>
          <div class="row">
            <div class="form-group col-md-6">
              <label class="control-label">ID người dùng</label>
              <input class="form-control" type="text" required="" value="#1" disabled="true">
            </div>
            <div class="form-group col-md-6">
              <label class="control-label">Họ và tên</label>
              <input class="form-control" type="text" required="" value="Nguyễn Văn Lênh">
            </div>
            <div class="form-group  col-md-6">
              <label class="control-label">Số điện thoại</label>
              <input class="form-control" type="number" required="" value="09267312388">
            </div>
            <div class="form-group col-md-6">
              <label class="control-label">Địa chỉ email</label>
              <input class="form-control" type="text" required="" value="20130303@st.hcmuaf.edu.vn">
            </div>
            <div class="form-group col-md-6">
              <label class="control-label">Ngày sinh</label>
              <input class="form-control" type="date" value="15/03/2000">
            </div>
            <div class="form-group  col-md-6">
              <label for="exampleSelect1" class="control-label">Quyền</label>
              <select class="form-control" id="exampleSelect1">
                <option>Người dùng</option>
                <option>Tác giả</option>
               
                
              </select>
            </div>
          </div>
          <br>
          <a href="#" style="    float: right;
        font-weight: 600;
        color: #ea0000;">Chỉnh sửa nâng cao</a>
          <br>
          <br>
          <button class="btn btn-save" type="button">Lưu lại</button>
          <a class="btn btn-cancel" data-dismiss="modal" href="#">Hủy bỏ</a>
          <br>
        </div>
        <div class="modal-footer">
        </div>
      </div>
    </div>
  </div>