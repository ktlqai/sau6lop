
		<div id="leftSide" style="padding-top:30px;">

		    <!-- Account panel -->

<div class="sideProfile">
	<a href="#" title="" class="profileFace"><img src="<?php echo public_url('admin')?>/images/user.png" width="40"></a>
	<span>Xin chào: <strong>admin!</strong></span>
	<span>Hoàng văn Tuyền</span>
	<div class="clear"></div>
</div>
<div class="sidebarSep"></div>
		    <!-- Left navigation -->

<ul id="menu" class="nav">

			<li class="home">

					<a href="<?php echo admin_url()?>" class="active" id="current">
						<span>Bảng điều khiển</span>
						<strong></strong>
					</a>


			</li>

			<li class="nhap_san_pham">

				<a href="" class="exp inactive">
					<span>Nhập sản phẩm</span>
					<strong>1</strong>
				</a>

				<ul style="display: none;" class="sub">
								<li>
									<a href="<?php echo admin_url('product/index')?>">
										Sản phẩm							</a>
								</li>
				</ul>
			</li>

			<li class="tao_tai_khoan">

				<a href="" class="exp inactive">
					<span>Tạo tài khoản</span>
					<strong>3</strong>
				</a>

				<ul style="display: none;" class="sub">
								<li>
									<a href="<?php echo admin_url('taotaikhoan/taotongdaily')?>">
										Tạo tk Tổng đại lý							</a>
								</li>
								<li>
									<a href="<?php echo admin_url('taotaikhoan/taodaily')?>">
										Tạo tk Đại lý							</a>
								</li>
								<li>
									<a href="<?php echo admin_url('taotaikhoan/taochinhanh')?>">
										Tạo tk Chi nhánh							</a>
								</li>
				</ul>

		</li>

		<li class="tran">

				<a href="" class="exp inactive">
					<span>Nhập liệu: <!--khách, ng gioi thieu, -->don hang</span>
					<strong>2</strong>
				</a>

				<ul style="display: none;" class="sub">
								<li>
									<a href="<?php echo admin_url('dathang/nhaplieu')?>">
										Nhập đơn hàng							</a>
								</li>
								<li>
									<a href="<?php echo admin_url('dathang/')?>">
										Xem đơn hàng							</a>
								</li>
								<!--
								<li>
									<a href="<?php echo admin_url('order')?>">
										Đơn hàng sản phẩm							</a>
								</li>-->
				</ul>

		</li>

			<li class="tran">

			<a href="" class="exp inactive">
				<span>Quản lý bán hàng</span>
				<strong>2</strong>
			</a>

							<ul style="display: none;" class="sub">
														<li>
										<a href="<?php echo admin_url('transaction')?>">
											Giao dịch							</a>
									</li>
														<li>
										<a href="<?php echo admin_url('order')?>">
											Đơn hàng sản phẩm							</a>
									</li>

									<li>
											<a href="<?php echo admin_url('transactionbyinput')?>">
											Giao dịch	do	nhập tay					</a>
									</li>
									<li>
											<a href="<?php echo admin_url('orderbyinput')?>">
											Đơn hàng sản phẩm	do nhập tay						</a>
									</li>
							</ul>

		</li>
			<li class="product">

			<a href="" class="exp inactive">
				<span>Sản phẩm</span>
				<strong>2</strong>
			</a>
			    <ul style="display: none;" class="sub">
						<li>
							<a href="<?php echo admin_url('product')?>">
								Sản phẩm
							</a>
						</li>
						<li>
							<a href="<?php echo admin_url('catalog')?>">
								Danh mục
							</a>
						</li>

									</ul>

		</li>
			<li class="account">

			<a href="" class="exp inactive">
				<span>Tài khoản</span>
				<strong>3</strong>
			</a>

						<ul style="display: none;" class="sub">
							<li>
							<a href="<?php echo admin_url('admin')?>">
								Ban quản trị
							</a>
						</li>

											<li>
							<a href="<?php echo admin_url('user')?>">
								<!--Thành viên-->Khách hàng							</a>
						</li>

						<li>
									<a href="<?php echo admin_url('user_refer')?>">
										Người giới thiệu							</a>
						</li>
									</ul>

		</li>
			<li class="support">

			<a href="" class="exp inactive">
				<span>Hỗ trợ và liên hệ</span>
				<strong>2</strong>
			</a>

							<ul style="display: none;"  class="sub">
											<li>
							<a href="<?php echo admin_url('support')?>">
								Hỗ trợ							</a>
						</li>
											<li>
							<a href="<?php echo admin_url('contact')?>">
								Liên hệ							</a>
						</li>
									</ul>

		</li>
			<li class="content">

			<a href="" class="exp inactive">
				<span>Nội dung</span>
				<strong>2</strong>
			</a>

							<ul style="display: none;" class="sub">
											<li>
							<a href="<?php echo admin_url('slide')?>">
								Slide
								</a>
						</li>

						<li>
							<a href="<?php echo admin_url('news')?>">
								Tin tức
								</a>
						</li>


									</ul>

		</li>

</ul>

		</div>
		<div class="clear"></div>
