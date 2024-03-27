CREATE TABLE shippings (
        id                   INT AUTO_INCREMENT PRIMARY KEY,
        createdDate          TIMESTAMP,
        lastModifiedDate     TIMESTAMP,
        userId               INT,
        userName             VARCHAR(255),
        userEmail            VARCHAR(255),
        userPhone            VARCHAR(255),
        billingStreet        VARCHAR(255),
        billingCity          VARCHAR(255),
        billingState         VARCHAR(255),
        billingPostalCode    VARCHAR(255),
        billingCountry       VARCHAR(255),
        shippingStreet       VARCHAR(255),
        shippingCity         VARCHAR(255),
        shippingState        VARCHAR(255),
        shippingPostalCode   VARCHAR(255),
        shippingCountry      VARCHAR(255)
);


INSERT INTO shippings 
  (createdDate, lastModifiedDate, userId, userName, userEmail, userPhone, billingStreet, billingCity, billingState, billingPostalCode, billingCountry, shippingStreet, shippingCity, shippingState, shippingPostalCode, shippingCountry)
VALUES 
  ('2024-03-21 14:26:06', '2024-03-21 14:26:06', 1, 'Jerry Seinfield', 'jerry.seinfield@comedyshow.com', '(212) 555-1234', '129 West 81st Street', 'New York City', 'New York State', '10024', 'United States', '129 West 81st Street', 'New York City', 'New York State', '10024', 'United States'),
  ('2024-03-21 14:26:06', '2024-03-21 14:26:06', 2, 'Jerry Somersby', 'jerry.somersby@comedyshow.com', '(212) 555-1235', '130 West 81st Street', 'New York City', 'New York State', '10024', 'United States', '130 West 81st Street', 'New York City', 'New York State', '10024', 'United States'),
  ('2024-03-21 14:26:06', '2024-03-21 14:26:06', 3, 'Cosmo Kramer', 'cosmo.kramer@comedyshow.com', '(212) 555-5678', '131 West 81st Street', 'New York City', 'New York State', '10024', 'United States', '131 West 81st Street', 'New York City', 'New York State', '10024', 'United States'),
  ('2024-03-21 14:26:06', '2024-03-21 14:26:06', 4, 'Elaine Benes', 'elaine.benes@comedyshow.com', '(212) 555-9876', '408 West 20 Street', 'New York City', 'New York State', '10024', 'United States', '408 West 20 Street', 'New York City', 'New York State', '10024', 'United States');
