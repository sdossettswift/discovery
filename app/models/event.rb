class Event < ApplicationRecord
  has_many :matters
  MONTH = ['-','01','02','03','04','05','06','07','08','09','10','11','12']
  DAY = ['-','01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31']
  HOUR = ['-','00','01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24']
  MINUTE =['-','00','05','10','15','20','25','30','35','40','45','50','55']
end
