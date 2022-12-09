<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản lý chủ đề bài viết</title>
</head>
<body>
<main class="app-content">
        <div class="app-title">
            <ul class="app-breadcrumb breadcrumb side">
                <li class="breadcrumb-item active"><a href="#"><b>Danh sách sản phẩm</b></a></li>
            </ul>
            <div id="clock"><span class="date"> Thứ Sáu, 18/11/2022 - 22 giờ 19 phút 39 giây</span></div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="tile">
                    <div class="tile-body">
                        <div class="row element-button">
                            <div class="col-sm-2">
              
                              <a class="btn btn-add btn-sm" href="form-add-san-pham.html" title="Thêm"><i class="fas fa-plus"></i>
                                Tạo mới sản phẩm</a>
                            </div>
                            <div class="col-sm-2">
                              <a class="btn btn-delete btn-sm nhap-tu-file" type="button" title="Nhập" onclick="myFunction(this)"><i class="fas fa-file-upload"></i> Tải từ file</a>
                            </div>
              
                            <div class="col-sm-2">
                              <a class="btn btn-delete btn-sm print-file" type="button" title="In" onclick="myApp.printTable()"><i class="fas fa-print"></i> In dữ liệu</a>
                            </div>
                            <div class="col-sm-2">
                              <a class="btn btn-delete btn-sm print-file js-textareacopybtn" type="button" title="Sao chép"><i class="fas fa-copy"></i> Sao chép</a>
                            </div>
              
                            <div class="col-sm-2">
                              <a class="btn btn-excel btn-sm" href="" title="In"><i class="fas fa-file-excel"></i> Xuất Excel</a>
                            </div>
                            <div class="col-sm-2">
                              <a class="btn btn-delete btn-sm pdf-file" type="button" title="In" onclick="myFunction(this)"><i class="fas fa-file-pdf"></i> Xuất PDF</a>
                            </div>
                            <div class="col-sm-2">
                              <a class="btn btn-delete btn-sm" type="button" title="Xóa" onclick="myFunction(this)"><i class="fas fa-trash-alt"></i> Xóa tất cả </a>
                            </div>
                          </div>
                        <div id="sampleTable_wrapper" class="dataTables_wrapper container-fluid dt-bootstrap4 no-footer"><div class="row"><div class="col-sm-12 col-md-6"><div class="dataTables_length" id="sampleTable_length"><label>Hiện <select name="sampleTable_length" aria-controls="sampleTable" class="form-control form-control-sm"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> danh mục</label></div></div><div class="col-sm-12 col-md-6"><div id="sampleTable_filter" class="dataTables_filter"><label>Tìm kiếm:<input type="search" class="form-control form-control-sm" placeholder="" aria-controls="sampleTable"></label></div></div></div><div class="row"><div class="col-sm-12"><table class="table table-hover table-bordered dataTable no-footer" id="sampleTable" role="grid" aria-describedby="sampleTable_info">
                            <thead>
                                <tr role="row"><th width="10" class="sorting_asc" tabindex="0" aria-controls="sampleTable" rowspan="1" colspan="1" aria-sort="ascending" aria-label=": activate to sort column descending" style="width: 13px;"><input type="checkbox" id="all"></th><th class="sorting" tabindex="0" aria-controls="sampleTable" rowspan="1" colspan="1" aria-label="Mã sản phẩm: activate to sort column ascending" style="width: 97.1875px;">Mã sản phẩm</th><th class="sorting" tabindex="0" aria-controls="sampleTable" rowspan="1" colspan="1" aria-label="Tên sản phẩm: activate to sort column ascending" style="width: 214.5px;">Tên sản phẩm</th><th class="sorting" tabindex="0" aria-controls="sampleTable" rowspan="1" colspan="1" aria-label="Ảnh: activate to sort column ascending" style="width: 30.8438px;">Ảnh</th><th class="sorting" tabindex="0" aria-controls="sampleTable" rowspan="1" colspan="1" aria-label="Số lượng: activate to sort column ascending" style="width: 65.5312px;">Số lượng</th><th class="sorting" tabindex="0" aria-controls="sampleTable" rowspan="1" colspan="1" aria-label="Tình trạng: activate to sort column ascending" style="width: 75.2656px;">Tình trạng</th><th class="sorting" tabindex="0" aria-controls="sampleTable" rowspan="1" colspan="1" aria-label="Giá tiền: activate to sort column ascending" style="width: 94.3594px;">Giá tiền</th><th class="sorting" tabindex="0" aria-controls="sampleTable" rowspan="1" colspan="1" aria-label="Danh mục: activate to sort column ascending" style="width: 121.953px;">Danh mục</th><th class="sorting" tabindex="0" aria-controls="sampleTable" rowspan="1" colspan="1" aria-label="Chức năng: activate to sort column ascending" style="width: 80.3594px;">Chức năng</th></tr>
                            </thead>
                            <tbody>
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                            <tr role="row" class="odd">
                                    <td width="10" class="sorting_1"><input type="checkbox" name="check1" value="1"></td>
                                    <td>71309005</td>
                                    <td>Bàn ăn gỗ Theresa</td>
                                    <td><img src="/img-sanpham/theresa.jpg" alt="" width="100px;"></td>
                                    <td>40</td>
                                    <td><span class="badge bg-success">Còn hàng</span></td>
                                    <td>5.600.000 đ</td>
                                    <td>Bàn ăn</td>
                                    <td><button class="btn btn-primary btn-sm trash" type="button" title="Xóa" onclick="myFunction(this)"><i class="fas fa-trash-alt"></i> 
                                        </button>
                                        <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp" data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                                       
                                    </td>
                                </tr><tr role="row" class="even">
                                    <td width="10" class="sorting_1"><input type="checkbox" name="check1" value="1"></td>
                                    <td>61304005</td>
                                    <td>Bàn ăn Reno mặt đá</td>
                                    <td><img src="/img-sanpham/reno.jpg" alt="" width="100px;"></td>
                                    <td>70</td>
                                    <td><span class="badge bg-success">Còn hàng</span></td>
                                    <td>24.200.000 đ</td>
                                    <td>Bàn ăn</td>
                                    <td><button class="btn btn-primary btn-sm trash" type="button" title="Xóa" onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                        </button>
                                        <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp" data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                                       
                                    </td>
                                </tr><tr role="row" class="odd">
                                    <td width="10" class="sorting_1"><input type="checkbox" name="check1" value="1"></td>
                                    <td>62304003</td>
                                    <td>Bàn ăn Vitali mặt đá</td>
                                    <td><img src="/img-sanpham/matda.jpg" alt="" width="100px;"></td>
                                    <td>40</td>
                                     <td><span class="badge bg-success">Còn hàng</span></td>
                                    <td>33.235.000 đ</td>
                                    <td>Bàn ăn</td>
                                    <td><button class="btn btn-primary btn-sm trash" type="button" title="Xóa" onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                        </button>
                                        <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp" data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>

                                      
                                    </td>
                                </tr><tr role="row" class="even">
                                    <td width="10" class="sorting_1"><input type="checkbox" name="check1" value="1"></td>
                                    <td>72638003</td>
                                    <td>Ghế ăn gỗ Theresa</td>
                                    <td><img src="/img-sanpham/ghethera.jpg" alt="" width="100px;"></td>
                                    <td>50</td>
                                     <td><span class="badge bg-success">Còn hàng</span></td>
                                    <td>950.000 đ</td>
                                    <td>Ghế gỗ</td>
                                    <td><button class="btn btn-primary btn-sm trash" type="button" title="Xóa" onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                        </button>
                                        <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp" data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button> 
                                    </td>
                                </tr><tr role="row" class="odd">
                                    <td width="10" class="sorting_1"><input type="checkbox" name="check1" value="1"></td>
                                    <td>72109004</td>
                                    <td>Ghế làm việc Zuno</td>
                                    <td><img src="/img-sanpham/zuno.jpg" alt="" width="100px;"></td>
                                    <td>50</td>
                                     <td><span class="badge bg-success">Còn hàng</span></td>
                                    <td>3.800.000 đ</td>
                                    <td>Ghế gỗ</td>
                                    <td><button class="btn btn-primary btn-sm trash" type="button" title="Xóa" onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                        </button>
                                        <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp" data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                                       
                                    </td>
                                </tr><tr role="row" class="even">
                                    <td width="10" class="sorting_1"><input type="checkbox" name="check1" value="1"></td>
                                    <td>82716001</td>
                                    <td>Ghế ăn Vitali</td>
                                    <td><img src="/img-sanpham/vita.jpg" alt="" width="100px;"></td>
                                    <td>55</td>
                                     <td><span class="badge bg-success">Còn hàng</span></td>
                                    <td>4.600.000 đ</td>
                                    <td>Ghế gỗ</td>
                                    <td><button class="btn btn-primary btn-sm trash" type="button" title="Xóa" onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                        </button>
                                        <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp" data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                                        
                                    </td>
                                </tr><tr role="row" class="odd">
                                    <td width="10" class="sorting_1"><input type="checkbox" name="check1" value="1"></td>
                                    <td>72109001</td>
                                    <td>Ghế ăn gỗ Lucy màu trắng</td>
                                    <td><img src="/img-sanpham/lucy.jpg" alt="" width="100px;"></td>
                                    <td>38</td>
                                     <td><span class="badge bg-success">Còn hàng</span></td>
                                    <td>1.100.000 đ</td>
                                    <td>Ghế gỗ</td>
                                    <td><button class="btn btn-primary btn-sm trash" type="button" title="Xóa" onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                        </button>
                                        <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp" data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i> </button>
                                    
                                    </td>
                                </tr><tr role="row" class="even">
                                    <td width="10" class="sorting_1"><input type="checkbox" name="check1" value="1"></td>
                                    <td>71304041</td>
                                    <td>Bàn ăn mở rộng Vegas</td>
                                    <td><img src="/img-sanpham/vegas.jpg" alt="" width="100px;"></td>
                                    <td>80</td>
                                     <td><span class="badge bg-success">Còn hàng</span></td>
                                    <td>21.550.000 đ</td>
                                    <td>Bàn thông minh</td>
                                    <td><button class="btn btn-primary btn-sm trash" type="button" title="Xóa" onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                        </button>
                                        <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp" data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                                      
                                    </td>
                                </tr><tr role="row" class="odd">
                                    <td width="10" class="sorting_1"><input type="checkbox" name="check1" value="1"></td>
                                    <td>71304037</td>
                                    <td>Bàn ăn mở rộng Gepa</td>
                                    <td><img src="/img-sanpham/banan.jpg" alt="" width="100px;"></td>
                                    <td>80</td>
                                     <td><span class="badge bg-success">Còn hàng</span></td>
                                    <td>16.770.000 đ</td>
                                    <td>Bàn thông minh</td>
                                    <td><button class="btn btn-primary btn-sm trash" type="button" title="Xóa" onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                        </button>
                                        <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp" data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                                       
                                    </td>
                                </tr><tr role="row" class="even">
                                    <td width="10" class="sorting_1"><input type="checkbox" name="check1" value="1"></td>
                                    <td>71304032</td>
                                    <td>Bàn ăn mặt gốm vân đá Cera</td>
                                    <td><img src="/img-sanpham/cera.jpg" alt="" width="100px;"></td>
                                    <td>46</td>
                                     <td><span class="badge bg-success">Còn hàng</span></td>
                                    <td>20.790.000 đ</td>
                                    <td>Bàn thông minh</td>
                                    <td><button class="btn btn-primary btn-sm trash" type="button" title="Xóa" onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                        </button>
                                        <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp" data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                                      
                                    </td>
                                </tr></tbody>
                        </table></div></div><div class="row"><div class="col-sm-12 col-md-5"><div class="dataTables_info" id="sampleTable_info" role="status" aria-live="polite">Hiện 1 đến 10 của 16 danh mục</div></div><div class="col-sm-12 col-md-7"><div class="dataTables_paginate paging_simple_numbers" id="sampleTable_paginate"><ul class="pagination"><li class="paginate_button page-item previous disabled" id="sampleTable_previous"><a href="#" aria-controls="sampleTable" data-dt-idx="0" tabindex="0" class="page-link">Lùi</a></li><li class="paginate_button page-item active"><a href="#" aria-controls="sampleTable" data-dt-idx="1" tabindex="0" class="page-link">1</a></li><li class="paginate_button page-item "><a href="#" aria-controls="sampleTable" data-dt-idx="2" tabindex="0" class="page-link">2</a></li><li class="paginate_button page-item next" id="sampleTable_next"><a href="#" aria-controls="sampleTable" data-dt-idx="3" tabindex="0" class="page-link">Tiếp</a></li></ul></div></div></div></div>
                    </div>
                </div>
            </div>
        </div>
    </main>

</body>
</html>