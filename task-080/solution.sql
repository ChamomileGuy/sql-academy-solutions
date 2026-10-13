CREATE VIEW Verified_Users AS 
 SELECT id, name, email
 FROM Users
 WHERE email_verified_at IS NOT NULL;
