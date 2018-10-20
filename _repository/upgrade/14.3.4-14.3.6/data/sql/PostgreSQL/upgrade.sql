--
-- Author:        Pierre-Henry Soria <hi@ph7.me>
-- Copyright:     (c) 2018, Pierre-Henry Soria. All Rights Reserved.
-- License:       GNU General Public License
--

-- Remove outdated field (fax is really, really dead by now! Even for affiliates)
ALTER TABLE ph7_affiliates_info DROP COLUMN fax;


-- Update pH7CMS's SQL schema version
UPDATE ph7_modules SET version = '1.5.0' WHERE vendorName = 'pH7CMS';