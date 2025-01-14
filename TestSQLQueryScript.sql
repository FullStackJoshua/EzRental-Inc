USE EZRentalDBCreateTableScript;



/*Importing data into our EZRentalDB*/
SELECT * 
FROM CreditCardProcressingMerchantSericveCompany
ORDER BY CreditCardProcessingMerchantServiceCompanyCode;

INSERT INTO CreditCardProcressingMerchantSericveCompany (CreditCardProcessingMerchantServiceCompanyCode, CreditCardProcessingMerchantServiceCompanyName) 
VALUES ('1', 'Stax by Fattmerchant'),('2', 'Helcim'),('3', 'Dharma Merchant Servicest'),('4', 'Payment Depot'),('5', 'National Processing'),
('6', 'Block'),('7', 'Intuit Quickbooks'),('8', 'PayPal'),('9', 'Stripe'),('10', 'Flagship Merchant Services'),
('11', 'Clover');

SELECT * 
FROM CreditCardNetworkCompany
ORDER BY CreditCardNetworkCompanyCode;

INSERT INTO CreditCardNetworkCompany (CreditCardNetworkCompanyCode, CreditCardNetworkCompanyName) 
VALUES ('1', 'American Express'),('2', 'Visa'),('3', 'Mastercard'),('4', 'Discover'),('5', 'Diners Club'),
('6', 'Interlink'),('7', 'Star'),('8', 'Accel'),('9', 'Interac'),('10', 'Visa ReadyLink'),
('11', 'Pulse'),('12', 'JCB (Japan Credit Bureau)'),('13', 'Rupay');

SELECT * 
FROM CreditCardIssuingBankCode
ORDER BY CreditCardIssuingBankCode;

INSERT INTO CreditCardIssuingBankCode(CreditCardIssuingBankCode, CreditCardIssuingBankName) 
VALUES ('1', 'American Express'),('2', 'Bank of America'),('3', 'Barclays'),('4', 'Capital One'),('5', 'Chase'),
('6', 'Citi'),('7', 'Discover'),('8', 'Synchrony Bank'),('9', 'U.S. Bank'),('10', 'Wells Fargo');

SELECT * 
FROM CreditCardCorporateMerchantBank
ORDER BY CreditCardCorporateMerchantBankCode;

INSERT INTO CreditCardCorporateMerchantBank(CreditCardCorporateMerchantBankCode, CreditCardCorporateMerchantBankName) 
VALUES ('1', 'Chase'),('2', 'Citi'),('3', 'Capital One');

SELECT * FROM CreditCard
ORDER BY CreditCardOwnerName;

INSERT INTO CreditCard(CreditCardNumber,CreditCardOwnerName,CreditCardProcessingMerchantServiceCompanyCode,CreditCardNetworkCompanyCode,CreditCardIssuingBankCode,
CreditCardCorporateMerchantBankCode,ExpDate,AddressLine1,AddressLine2,City,StateCode,Zipcode,Country,CreditCardLimit,CreditCardAvailableCredit,ActivationStatus) 
VALUES ('1111111111111111', 'Jose Smith', '8','2','2','1','01/01/2025','111 Jay Street','Suite 101','Freehold','NJ','17711','USA','3000.00','1000.00','1'),
	   ('2222222222222221', 'Joshua Lim', '7','6','4','2','02/02/2027','222 Glenwood Rd','Apt 6H','Brooklyn','NY','11209','USA','10000.00','8000.00','1'),
	   ('2222222222222222', 'Joshua Lim', '8','2','1','2','02/02/2027','222 Glenwood Rd','Apt 6H','Brooklyn','NY','11209','USA','10000.00','8000.00','1'),
	   ('2222222222222223', 'Joshua Lim', '11','4','2','3','02/02/2027','222 Glenwood Rd','Apt 6H','Brooklyn','NY','11209','USA','10000.00','8000.00','1'),
	   ('3333333333333333', 'Denzel Washington', '1','3','5','1','03/03/2024','333 5th Avenue','','New York','NY','1033','USA','3000.00','3000.00','0'),
	   ('4444444444444444', 'John Wick', '6','11','8','3','04/04/2029','444 Flatlands Avenue','3rd Floor','Allentown','PA','14344','USA','5000.00','2000.00','1'),
	   ('5555555555555555', 'Beatrix Kiddo', '8','7','1','1','05/05/2030','555 E45th Avenue','Apt 5A','Santa Monica','CA','12255','USA','3000.00','500.00','1');

/* Imported Data From excel sheet */
SELECT * FROM USState;

SELECT * FROM Country;


/* Testing and validating Select Statements */
/* #1 */
SELECT * 
FROM CreditCard ;

SELECT * 
FROM CreditCard 
WHERE CreditCardNumber = '5555555555555555'; 

/* #2 */
SELECT * 
FROM CreditCard ;

SELECT CreditCardNumber, CreditCardOwnerName, ExpDate, AddressLine1, AddressLine2, City, StateCode, Zipcode, Country, ActivationStatus
FROM CreditCard 
WHERE StateCode = 'NY';

/* #3 */
SELECT
    CreditCard.*,
    CreditCardProcressingMerchantSericveCompany.CreditCardProcessingMerchantServiceCompanyName,
    CreditCardNetworkCompany.CreditCardNetworkCompanyName,
    CreditCardIssuingBankCode.CreditCardIssuingBankName,
    CreditCardCorporateMerchantBank.CreditCardCorporateMerchantBankName
FROM
    CreditCard, CreditCardProcressingMerchantSericveCompany, CreditCardNetworkCompany, CreditCardIssuingBankCode, CreditCardCorporateMerchantBank
WHERE
    CreditCard.CreditCardProcessingMerchantServiceCompanyCode = CreditCardProcressingMerchantSericveCompany.CreditCardProcessingMerchantServiceCompanyCode
    AND CreditCard.CreditCardNetworkCompanyCode = CreditCardNetworkCompany.CreditCardNetworkCompanyCode
    AND CreditCard.CreditCardIssuingBankCode = CreditCardIssuingBankCode.CreditCardIssuingBankCode
    AND CreditCard.CreditCardCorporateMerchantBankCode = CreditCardCorporateMerchantBank.CreditCardCorporateMerchantBankCode
    AND CreditCard.City = 'Santa Monica';

/* Testing and validating Update Statements */
/* #1 */
SELECT * 
FROM CreditCard
Where CreditCardNumber = '1111111111111111';

UPDATE CreditCard
SET CreditCardOwnerName = 'Joe Smith (Joey)',
CreditCardProcessingMerchantServiceCompanyCode = '4',
CreditCardNetworkCompanyCode = '1',
CreditCardIssuingBankCode = '3',
CreditCardCorporateMerchantBankCode = '2',
ExpDate = '2026-05-02',
AddressLine1 = '123 Jay Street',
AddressLine2 = '',
City = 'Bossier',
StateCode= 'LA',
Zipcode = '71111',
Country= 'USA',
CreditCardLimit= '5000',
CreditCardAvailableCredit = '2500',
ActivationStatus = '0'
WHERE CreditCardNumber = '1111111111111111';

/* #2 */
SELECT * 
FROM CreditCard
Where CreditCardNumber = '4444444444444444';

UPDATE CreditCard
SET CreditCardOwnerName = 'Jonathan Wick',
AddressLine1 = '5131  Glendwood Road',
AddressLine2 = '',
City = 'Hoboken',
StateCode= 'NJ',
Zipcode = '68281',
Country= 'USA'
WHERE CreditCardNumber = '4444444444444444';

/* #3 */
SELECT * 
FROM CreditCard
Where CreditCardNumber = '5555555555555555';

SELECT * FROM CreditCardProcressingMerchantSericveCompany ORDER BY CreditCardProcessingMerchantServiceCompanyCode;

INSERT INTO CreditCardProcressingMerchantSericveCompany(CreditCardProcessingMerchantServiceCompanyCode, CreditCardProcessingMerchantServiceCompanyName)
VALUES('12','Amzaon Pay');

SELECT * FROM CreditCardProcressingMerchantSericveCompany ORDER BY CreditCardProcessingMerchantServiceCompanyCode;

UPDATE CREDITCARD
SET CREDITCARDPROCESSINGMERCHANTSERVICECOMPANYCODE = '12'
WHERE CreditCardNumber = '5555555555555555';


/* Testing and validating Delete Statements */
/* #1 */
INSERT INTO CreditCard(CreditCardNumber,CreditCardOwnerName,CreditCardProcessingMerchantServiceCompanyCode,CreditCardNetworkCompanyCode,CreditCardIssuingBankCode,
CreditCardCorporateMerchantBankCode,ExpDate,AddressLine1,AddressLine2,City,StateCode,Zipcode,Country,CreditCardLimit,CreditCardAvailableCredit,ActivationStatus) 
VALUES ('6666666666666666', 'Bruce Vera', '3','4','2','2','10/05/2031','444 E4th Avenue','Apt 51A','Austin','TX','22535','USA','4000.00','200.00','1');

SELECT * FROM CreditCard; 

DELETE 
FROM CreditCard 
WHERE CreditCardNumber = '6666666666666666';

/* #2 */
SELECT * FROM CreditCard; 
SELECT * FROM CreditCardProcressingMerchantSericveCompany ORDER BY CreditCardProcessingMerchantServiceCompanyCode;


/* Find the names of the foreign key constraints */
SELECT
    constraint_name
FROM
    information_schema.table_constraints
WHERE
    table_name = 'CREDITCARD'
    AND constraint_type = 'FOREIGN KEY';

/* Drop the foreign key constraints*/
ALTER TABLE CreditCard
DROP CONSTRAINT FK_CreditCardProcessingMerchantServiceCompany;

DELETE FROM CreditCardProcressingMerchantSericveCompany
WHERE CreditCardProcessingMerchantServiceCompanyCode = '12';

SELECT * FROM CreditCard; 
SELECT * FROM CreditCardProcressingMerchantSericveCompany ORDER BY CreditCardProcessingMerchantServiceCompanyCode;

