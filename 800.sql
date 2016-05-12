SELECT T2.ID, T.id SIGNID, T.DEVELOPCODE, T.SIGN_CONTENT, T2.ECCODE, T2.INSERT_DT FROM (SELECT * FROM T_SIGN WHERE IS_VALID = 1) T,
        (SELECT ID, SIGNID, IS_VALID, INSERT_DT, ECCODE FROM T_SIGNUSER WHERE ECCODE = '5911323401' AND IS_VALID = 1) T2 
        WHERE T.ID = T2.SIGNID(+);
        
select t.*, t.rowid from T_SIGNUSER t;

select t.*, t.rowid from T_SIGN t;

select t2.id,t.userid,t2.developcode,t2.sign_content,t2.checkflag,t2.memo,t.eccode
    from T_SIGNUSER t,T_SIGN t2
   where t.signid=t2.id
     and t.is_valid=1
     and t2.checkflag=1;
