

--Create Database
CREATE DATABASE EZRentalDBCreateTableScript;

USE EZRentalDBCreateTableScript;


--Create Credit_Card_Procressing_Merchant_Sericve_Company
CREATE TABLE CreditCardProcressingMerchantSericveCompany
(
 CreditCardProcessingMerchantServiceCompanyCode                 TINYINT				CHECK(CreditCardProcessingMerchantServiceCompanyCode  between 1 and 20)				PRIMARY KEY,       
 CreditCardProcessingMerchantServiceCompanyName                 VARCHAR(60)			UNIQUE  NOT NULL
);

--Create Credit_Card_Network_Company
CREATE TABLE CreditCardNetworkCompany 
(
 CreditCardNetworkCompanyCode									TINYINT             CHECK(CreditCardNetworkCompanyCode   between 1 and 25)								PRIMARY KEY,
 CreditCardNetworkCompanyName									VARCHAR(25)			UNIQUE NOT NULL 
 );


 --Create Credit_Card_Issuing_Bank_Code
 CREATE TABLE CreditCardIssuingBankCode
 (
  CreditCardIssuingBankCode										TINYINT               CHECK(CreditCardIssuingBankCode  between 1 and 25)								PRIMARY KEY,
  CreditCardIssuingBankName										VARCHAR(20)			  UNIQUE NOT NULL
 );


 --Create Credit_Card_Corporate_Merchant_Bank
 CREATE TABLE CreditCardCorporateMerchantBank
 (
  CreditCardCorporateMerchantBankCode							TINYINT               CHECK(CreditCardCorporateMerchantBankCode  between 1 and 10)						PRIMARY KEY,
  CreditCardCorporateMerchantBankName							VARCHAR(30)			  UNIQUE NOT NULL
 );

 --Create Credit_Card  
 CREATE TABLE CreditCard 
(
 CreditCardNumber												VARCHAR(16)																								PRIMARY KEY,
 CreditCardOwnerName                                            VARCHAR(100)          NOT NULL,
 CreditCardProcessingMerchantServiceCompanyCode					TINYINT               CHECK(CreditCardProcessingMerchantServiceCompanyCode between 1 and 20)  Not Null,    
 CreditCardNetworkCompanyCode									TINYINT               CHECK(CreditCardNetworkCompanyCode   between 1 and 25)                  NOT NULL,
 CreditCardIssuingBankCode                                      TINYINT               CHECK(CreditCardIssuingBankCode    between 1 and 25)	                  NOT NULL,
 CreditCardCorporateMerchantBankCode                            TINYINT               CHECK(CreditCardCorporateMerchantBankCode between 1 and 10)             NOT NULL,  
 ExpDate														DATE                  NOT NULL, 
 AddressLine1                                                   VARCHAR(50)           NOT NULL, 
 AddressLine2                                                   VARCHAR(50)           NULL, 
 City                                                           VARCHAR(50)           NOT NULL,
 StateCode                                                      CHAR(2)               NOT NULL,
 Zipcode                                                        VARCHAR(10)           NOT NULL,
 Country                                                        VARCHAR(60)           NOT NULL,                                                                            
 CreditCardLimit                                                DECIMAL(8,2)          NOT NULL,
 CreditCardAvailableCredit                                      DECIMAL(8,2)          NOT NULL,
 ActivationStatus                                               BIT                   NOT NULL,

 CONSTRAINT                                                     FK_CreditCardProcessingMerchantServiceCompany
																FOREIGN KEY (CreditCardProcessingMerchantServiceCompanyCode)
																REFERENCES CreditCardProcressingMerchantSericveCompany (CreditCardProcessingMerchantServiceCompanyCode)
																ON DELETE CASCADE ON UPDATE CASCADE,

 CONSTRAINT                                                     FK_CreditCardNetworkCompany
																FOREIGN KEY (CreditCardNetworkCompanyCode)
																REFERENCES CreditCardNetworkCompany (CreditCardNetworkCompanyCode)
																ON DELETE CASCADE ON UPDATE CASCADE,

 CONSTRAINT                                                     FK_CreditCardIssuingBankCode
																FOREIGN KEY (CreditCardIssuingBankCode)
																REFERENCES CreditCardIssuingBankCode (CreditCardIssuingBankCode)
																ON DELETE CASCADE ON UPDATE CASCADE,

CONSTRAINT                                                      FK_CreditCardCorporateMerchantBank
																FOREIGN KEY (CreditCardCorporateMerchantBankCode)
																REFERENCES CreditCardCorporateMerchantBank (CreditCardCorporateMerchantBankCode)
																ON DELETE CASCADE ON UPDATE CASCADE,
);

 --Create US_State  
 CREATE TABLE USState
 (
 StateID													   TINYINT              CHECK(StateID  between 1 and 75)                                                     PRIMARY KEY,
 StateCode2Char												   CHAR(2)              NOT NULL UNIQUE,
 StateName													   VARCHAR(50)          NOT NULL UNIQUE
 );

  --Create Country
  CREATE TABLE Country
 (
 CountryID													   TINYINT              CHECK(CountryID  between 1 and 250)                                                     PRIMARY KEY,
 CountryCode2Char											   CHAR(2)              NOT NULL UNIQUE,
 CountryCode3Char											   CHAR(3)              NOT NULL UNIQUE,
 CountryName												   VARCHAR(100)         NOT NULL UNIQUE 
 );