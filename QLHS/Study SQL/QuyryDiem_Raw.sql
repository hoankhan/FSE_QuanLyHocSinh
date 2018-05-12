-- Ma Hs: 14000002
-- ma lop: 5

select tblapdung.malop, tbldiem.mahocsinh, tblchitietchuongtrinh.mamonhoc,
	tbldiem.diemso,tblloaidiem.tenloaidiem  , tblhinhthucdanhgia.hesodiem  
from tblapdung
 ,tblchuongtrinh
 ,tblchitietchuongtrinh
 ,tblhinhthucdanhgia
 ,tbldiem
 ,tblloaidiem 
where
	tbldiem.mahocsinh =N'14000002'
	and tblapdung.malop = 5
	and tblapdung.machuongtrinh=tblchuongtrinh.machuongtrinh 
	and tblchuongtrinh.machuongtrinh = tblchitietchuongtrinh.machuongtrinh 
	and tblchitietchuongtrinh.machitietchuongtrinh = tblhinhthucdanhgia.machitietchuongtrinh 
	and tblhinhthucdanhgia.mahinhthucdanhgia = tbldiem.mahinhthucdanhgia
	and tblloaidiem.maloaidiem = tblhinhthucdanhgia.maloaidiem 
