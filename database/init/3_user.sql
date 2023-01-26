CREATE USER green@'%' IDENTIFIED BY 'veggie';
GRANT SELECT,INSERT,UPDATE,DELETE on lgl.* to green@'%';