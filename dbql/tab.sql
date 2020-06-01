create table if not exists cyna_tenants (tenantid SERIAL, 
                                         tenantdomain VARCHAR(160),
                                         tenantapprover VARCHAR(160),
                                         tennantapproverEmail VARCHAR(160),
                                         tenantaddr1 VARCHAR(160),
                                         tenantaddr2 VARCHAR(160),
                                         tenantaddr3 VARCHAR(160),
                                         tenantcity  VARCHAR(160),
                                         tenantstate VARCHAR(160),
                                         tenantcountry VARCHAR(160),
                                         tenanttaxid VARCHAR(160),
                                         tenantstatus   VARCHAR(160),
                                         createdon  DATE default NOW(), 
                                         updatedon  DATE,
                                         updatedby  INT, 
                                         tenantstartdate DATE,
                                         tenantenddate DATE,
                                         attribute1 VARCHAR(160),
                                         attribute2 VARCHAR(160),
                                         attribute3 VARCHAR(160),
                                         attribute4 VARCHAR(160),
                                         attribute5 VARCHAR(160),
                                         attribute6 VARCHAR(160),
                                         attribute7 VARCHAR(160),
                                         attribute8 VARCHAR(160),
                                         attribute9 VARCHAR(160),
                                         attribute10 VARCHAR(160),
                                         attribute11 VARCHAR(160),
                                         attribute12 VARCHAR(160),
                                         attribute13 VARCHAR(160),
                                         attribute14 VARCHAR(160),
                                         attribute15 VARCHAR(160));



create table if not exists cyna_users (userid SERIAL, 
                                       tenantid INT,
                                       username VARCHAR(50),
                                       userpassword VARCHAR(1000), 
                                       useremail VARCHAR(160),
                                       useraemail VARCHAR(160),
                                       userphone VARCHAR(30),
                                       useraddr1 VARCHAR(160),
                                       useraddr2 VARCHAR(160),
                                       useraddr3 VARCHAR(160),
                                       usercity  VARCHAR(160),
                                       userstate VARCHAR(160),
                                       usercountry VARCHAR(160),
                                       userorganization VARCHAR(160),
                                       userdepartment   VARCHAR(160),
                                       createdon  DATE default NOW(), 
                                       updatedon  DATE,
                                       updatedby  INT, 
                                       userstatus VARCHAR(30),
                                       attribute1 VARCHAR(160),
                                       attribute2 VARCHAR(160),
                                       attribute3 VARCHAR(160),
                                       attribute4 VARCHAR(160),
                                       attribute5 VARCHAR(160),
                                       attribute6 VARCHAR(160),
                                       attribute7 VARCHAR(160),
                                       attribute8 VARCHAR(160),
                                       attribute9 VARCHAR(160),
                                       attribute10 VARCHAR(160),
                                       attribute11 VARCHAR(160),
                                       attribute12 VARCHAR(160),
                                       attribute13 VARCHAR(160),
                                       attribute14 VARCHAR(160),
                                       attribute15 VARCHAR(160));

create table if not exists cyna_user_machines (userid INT,
                                               tenantid INT, 
                                               machineaddr VARCHAR(50), 
                                               oauthkey VARCHAR(50),
                                               regstatus VARCHAR(30));


create table if not exists cyna_roles (roleId SERIAL,
                                       tenantId INT, 
                                       roleName VARCHAR(50), 
                                       effectiveStartDate TIMESTAMP,
                                       effectiveEndDAte TIMESTAMP,
                                       createdOn  DATE default NOW(),
                                       updatedOn  DATE,
                                       updatedBy  INT,
                                       attribute1 VARCHAR(160),
                                       attribute2 VARCHAR(160),
                                       attribute3 VARCHAR(160),
                                       attribute4 VARCHAR(160),
                                       attribute5 VARCHAR(160),
                                       attribute6 VARCHAR(160),
                                       attribute7 VARCHAR(160),
                                       attribute8 VARCHAR(160),
                                       attribute9 VARCHAR(160),
                                       attribute10 VARCHAR(160),
                                       attribute11 VARCHAR(160),
                                       attribute12 VARCHAR(160),
                                       attribute13 VARCHAR(160),
                                       attribute14 VARCHAR(160),
                                       attribute15 VARCHAR(160));

create table if not exists cyna_user_roles (userId INT,
                                            tenantId INT, 
                                            roleId INT, 
                                            effectiveStartDate TIMESTAMP,
                                            effectiveEndDAte TIMESTAMP,
                                            attribute1 VARCHAR(160),
                                            attribute2 VARCHAR(160),
                                            attribute3 VARCHAR(160),
                                            attribute4 VARCHAR(160),
                                            attribute5 VARCHAR(160),
                                            attribute6 VARCHAR(160),
                                            attribute7 VARCHAR(160),
                                            attribute8 VARCHAR(160),
                                            attribute9 VARCHAR(160),
                                            attribute10 VARCHAR(160),
                                            attribute11 VARCHAR(160),
                                            attribute12 VARCHAR(160),
                                            attribute13 VARCHAR(160),
                                            attribute14 VARCHAR(160),
                                            attribute15 VARCHAR(160));



/* Super partition/user seeding  */

insert into cyna_tenants (tenantId , 
                          tenantDomain,
                          tenantApprover,
                          tennantApproverEmail,
                          tenantAddr1,
                          tenantAddr2,
                          tenantAddr3,
                          tenantCity,
                          tenantState,
                          tenantCountry,
                          tenantTaxId,
                          tenantStatus ,
                          createdOn, 
                          tenantStartDate,
                          tenantEndDate ) values 
                          (
                          0,
                          'cynergasia.com',
                          'sysadmin',
                          'sysadmin@cynergasia.com',
                          '',
                          '',
                          '',
                          '',
                          '',
                          '',
                          '111-111-1111',
                          'A',
                          NOW(),
                          NOW(),
                          NOW()                          );
                           
insert into cyna_users (userid ,
                                       tenantid,
                                       username ,
                                       userpassword , 
                                       useremail ,
                                       userorganization,
                                       userdepartment,
                                       createdon,  
                                       userstatus) values  
                                       (
                                        0,
                                        0,
                                        'SYSADMIN',
                                        'manager',
                                        'sysadmin@cynergasia.com',
                                        'SEED',
                                        'SEED',
                                        NOW(),
                                        'A');



/* End of Super partition/user seeding.  */
/*insert into cyna_users (userName,userEmail,createdOn,userStatus) values ('arindam','rousen1@yahoo.com',null,'Confirmed');
insert into cyna_users (userName,userEmail,createdOn,userStatus) values ( 'sathi','sathich1@yahoo.com',null,'Confirmed');

insert into cyna_user_machines(userId,oauthKey,regStatus) values (1,'3334555','Pending');*/

create table if not exists cyna_projects (tenantid INT,projectId SERIAL, projectName VARCHAR(50), projectLocation VARCHAR(50));
create table if not exists cyna_class (tenantid INT,projectId INT, classCode VARCHAR(50), classCodeDesc VARCHAR(50));
create table if not exists cyna_keys (tenantid INT,projectId INT, projectRole VARCHAR(50), personName VARCHAR(100));


commit;