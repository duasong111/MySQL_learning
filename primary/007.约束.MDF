约束

# 主键约束，自动增长
insert into  user1(name, age, status, gender) values ('xixi',19,'1','女');
# 下边这个是与前边的非空是违背的,不能执行成功
insert into  user1(name, age, status, gender) values (null,19,'1','女');

# //看年龄，这个时候 check ( age>0&&age<=130 )  起到作用了
insert into  user1(name, age, status, gender) values ('xixi',-23,'1','女');
# statusd的默认值是1 values ('xixi',111,女')也就是这样，不设置但是他的值是1
insert into  user1(name, age, gender) values ('哇嘿',111,'女');





外界约束是涉及到两张表以上的操作

create table dep(
    id int auto_increment comment 'ID' primary key ,
    name varchar(50) not null  comment  '部门名称'
)comment '部门表';


insert into dep(id, name) VALUES (1,'研发部'),(2,'市场部'),(3,'财务部'),(4,'销售部'),(5,'总经办');

create table emp(
    id int auto_increment comment 'ID' primary key ,
    name varchar(50) not null  comment  '姓名',
    age int comment '年龄',
    job varchar(20) comment '职位',
    salary int comment '薪水',
    entrydate date comment '入职时间',
   managerid int comment '直系领导ID',
   dept_id int comment '部门ID'
)comment '员工表';

添加外部数据

insert into emp(id, name, age, job, salary, entrydate, managerid, dept_id)
VALUES(1,'张三',23,'公务员',6000,'2021-2-23',null,5),(2,'张三丰',53,'程序员',9000,'2012-4-23',1,1),
      (3,'张以',53,'试吃员',7000,'2023-1-23',2,1),(4,'小昭',43,'厨师',4000,'2018-4-23',2,1),
      (5,'爱奇艺',53,'软件',1000,'2011-4-23',3,1),(6,'大美女',28,'美女',600,'2004-4-23',2,1);


# 删除外键
# alter table emp add constraint fk_emp_dept_id from key dept_id //添加外键约束
alter table emp add constraint fk_emp_dept_id foreign key(dept_id) references dep(id);
# 删除外表
alter table emp drop foreign key fk_emp_dept_id;
# 关联外键
alter table emp add constraint fk_emp_dept_id foreign key(dept_id) references dep(id) on update cascade on delete cascade ;
drop table dep;
drop table emp;
//最后一个操作是在外键约束中删除外键，然后把所有的元素置为null，而对于alter table emp add constraint fk_emp_dept_id foreign key(dept_id) references dep(id) on update cascade on delete cascade ;则是要删除则都进行删除，这个俩的区别
alter table emp add constraint fk_emp_dept_id foreign key(dept_id) references dep(id)  on update set null on delete set null ;


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

