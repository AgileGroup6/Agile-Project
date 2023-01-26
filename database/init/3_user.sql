CREATE USER green@'localhost' IDENTIFIED BY 'veggie';
GRANT SELECT,INSERT,UPDATE,DELETE on lgl.* to green@'%';