select *
from layoffs;

create table layoffs1
like layoffs;

insert layoffs1
select*
from layoffs;

select *,
row_number()over (partition by company,location,industry,total_laid_off,percentage_laid_off,stage,date,country,funds_raised_millions) as row_num
from layoffs1;

with Layoffs1_cte as
(select *,
row_number()over (partition by company,location,industry,total_laid_off,percentage_laid_off,stage,date,country,funds_raised_millions) as row_num
from layoffs1)
select *
from layoffs1_cte
where row_num>1;

CREATE TABLE `layoffs2` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` int DEFAULT NULL,
  `percentage_laid_off` text,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised_millions` int DEFAULT NULL,
  `row_num` int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

select *
from layoffs2;

insert layoffs2
select *,
row_number()over (partition by company,location,industry,total_laid_off,percentage_laid_off,stage,date,country,funds_raised_millions) as row_num
from layoffs1;

select *
from layoffs2
where row_num>1;

select *
from layoffs2;

delete
from layoffs2
where row_num>1;

select company,trim(company)
from layoffs2;
update layoffs2
set company=trim(company);

select *
from layoffs2
where industry like "crypto%";
update layoffs2
set industry="crypto"
where industry like "crypto%";

select country, trim(trailing"." from country)
from layoffs2
where country like "United States%";
update layoffs2
set country =trim(trailing"." from country)
where country like "United States%";

select date,str_to_date(date,"%m/%d/%Y")
from layoffs2;
update layoffs2
set date=str_to_date(date,"%m/%d/%Y");

select *
from layoffs2
where company="Airbnb";

update layoffs2
set industry=null
where industry ="";

select *
from layoffs2 t1
join layoffs2 t2
on t1.company=t2.company
and t1.location=t2.location
where t1.industry is null
and t2.industry is not null;

update layoffs2 t1
join layoffs2 t2
on t1.company=t2.company
set t1.industry=t2.industry
where t1.industry is null
and t2.industry is not null;

delete
from layoffs2
where total_laid_off is null
and percentage_laid_off is null;

select*
from layoffs2;

alter table layoffs2
drop column row_num;

select*
from layoffs2;
