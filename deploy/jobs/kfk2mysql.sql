  CREATE TABLE kfkTable(
    id int,
    name varchar
 )WITH(
    type ='kafka09',
    bootstrapServers ='localhost:9092',
    zookeeperQuorum ='localhost:2181/kafka',
    offsetReset ='latest',
    topic ='test',
    groupId='test',
    parallelism ='1'
 );


  CREATE TABLE MyResult(
    id int,
    name VARCHAR
 )WITH(
    type ='mysql',
    url ='jdbc:mysql://localhost:3306/test?useSSL=false',
    userName ='root',
    password ='12345678',
    tableName ='student1',
    parallelism ='1'
 );

insert
into
    MyResult
    select
        id,
        name
    from
        kfkTable;