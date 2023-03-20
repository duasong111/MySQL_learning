
# l流程函数
select if(false,'ok','error');
select ifnull(null,'Default');

以上这俩是如果是的话就第一个，不是的话就第二个才做



# 查询所有员工入职的天数
 select worknm, datediff(curdate(),user_new.worktime)from user_new;
select name,datediff(curdate(),paly.worktime) from paly;

select  wname,wplace from user_new ;  /*显示R人名然后所在的地址其他的不输出*/


select
    wname, /*输出姓名*/
    (case wplace when '北京' then '一线城市' when '上海' then '一线城市' else '二线城市' end)
        as '工作地址' from user_new;



//来进行一系列的操作 

select * from score;
select
    id,
    name,
    (case when math>= 85 then '优秀' when math <60 then '不及格'else '及格了' end) '数学',
    (case when score.english>= 85 then '优秀' when score.english <60 then '不及格'else '及格了' end)'英语',
    (case when score.chinese>= 85 then '优秀' when score.chinese <60 then '不及格'else '及格了' end)'语文'
    from score;




create table user_new(

    id int  comment 'id名称',
    worknm varchar(20)  comment '工作地址',
    wname varchar(20)  comment '姓名',
    gender char   comment '性别',
    age int1  comment '年龄',
    idcard  long comment '身份证hao',
    wplace varchar(30) comment '工作地址',
    worktime long comment  '入职时间'
)comment '表格1';

# insert into user_new (id)
select * from user_new;

insert into user_new(id, worknm, wname, gender, age, idcard, wplace, worktime)
values(1,'1101','张三','男',33,'21212132','北京','2013-3-21'),
      (2,'1123','我最厉害','男',90,'21212132','上海','2013-7-21'),
      (3,'1121','汪汪','男',10,'21212132','上海','2013-7-21'),
      (4,'1211','张无忌','女',25,'21212132','上海','2019-3-21'),
      (5,'1134','抽搭','女',16,'21212132','北京','2020-6-21'),
      (6,'1143','阿波罗','男',33,'21212132','深圳','2013-9-21'),
      (7,'1154','黑吧','男',23,'21212132','北京','2017-7-21'),
      (1,'1154','天照','女',32,'21212132','上海','2013-7-21'),
      (1,'1132','丑的很','男',33,'21212132','天津','2014-7-21');

select distinct * from user_new;
select *from user_new limit 1,10;
select wname,worknm,age from user_new;

# l流程函数
select if(false,'ok','error');
select ifnull(null,'Default');
# 查询所有员工入职的天数
 select worknm, datediff(curdate(),user_new.worktime)from user_new;
select name,datediff(curdate(),paly.worktime) from paly;

select  wname,wplace from user_new ;  /*显示R人名然后所在的地址其他的不输出*/
# update user_new set  worktime='2022-2-23' where id=;
# case语句的使用
# 将上海北京员工的信息
select
    wname, /*输出姓名*/
    (case wplace when '北京' then '一线城市' when '上海' then '一线城市' else '二线城市' end)
        as '工作地址' from user_new;



