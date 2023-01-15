SELECT * FROM wbh.`tiktok engagement last 60 days.xlsx - sheetjs`;

/*
Converting datatypes
*/
-- Converting the column date in table from text type to date type
UPDATE wbh.`tiktok engagement last 60 days.xlsx - sheetjs`
set date = str_to_date(`Date`, '%Y-%m-%d');

ALTER TABLE wbh.`tiktok engagement last 60 days.xlsx - sheetjs`
MODIFY COLUMN Date date;

-- Converting the column video views in table from text type to date type
UPDATE wbh.`tiktok engagement last 60 days.xlsx - sheetjs`
set `Video views` = convert(`Video views`, signed);

ALTER TABLE wbh.`tiktok engagement last 60 days.xlsx - sheetjs`
MODIFY COLUMN `Video views` int;

-- Converting the column Profile views in table from text type to date type
UPDATE wbh.`tiktok engagement last 60 days.xlsx - sheetjs`
set `Profile views` = convert(`Profile views`, signed);

ALTER TABLE wbh.`tiktok engagement last 60 days.xlsx - sheetjs`
MODIFY COLUMN `Profile views` int;

-- Converting the column Profile views in table from text type to date type
UPDATE wbh.`tiktok engagement last 60 days.xlsx - sheetjs`
set `Comments` = convert(`Comments`, signed);

ALTER TABLE wbh.`tiktok engagement last 60 days.xlsx - sheetjs`
MODIFY COLUMN `Comments` int;

-- Converting the column Profile views in table from text type to date type
UPDATE wbh.`tiktok engagement last 60 days.xlsx - sheetjs`
set `Shares` = convert(`Shares`, signed);

ALTER TABLE wbh.`tiktok engagement last 60 days.xlsx - sheetjs`
MODIFY COLUMN `Shares` int;


/*
data exploring
*/
SELECT * 
FROM wbh.`tiktok engagement last 60 days.xlsx - sheetjs`
order by 3 DESC;