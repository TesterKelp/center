<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>WebUploader演示</title>
<link rel="stylesheet" type="text/css"
	href="../../test/res/webuploader.css" />
<link rel="stylesheet" type="text/css" href="../../test/res/style.css" />
</head>
<body>
	<div id="wrapper">
		<div id="container">
			<!--头部，相册选择和格式选择-->

			<div id="uploader">
				<div class="queueList">
					<div id="dndArea" class="placeholder">
						<div id="filePicker"></div>
						<p>或将照片拖到这里，单次最多可选300张</p>
					</div>
				</div>
				<div class="statusBar" style="display: none;">
					<div class="progress">
						<span class="text">0%</span> <span class="percentage"></span>
					</div>
					<div class="info"></div>
					<div class="btns">
						<div id="filePicker2"></div>
						<div class="uploadBtn">开始上传</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="../../test/res/jquery.js"></script>
	<script type="text/javascript" src="../../test/res/webuploader.js"></script>
	<script type="text/javascript" src="../../test/res/upload.js"></script>
</body>
</html>