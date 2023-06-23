-- checking the data sets
select * from Covid_deaths;
select * from Covid_vaccination;

-- selecting data for the analysis
select location, date, total_cases, new_cases, total_deaths, population
From Covid_deaths;

-- analyzing total cases versus total deaths
-- converting data type varchar in total_cases and total_deaths into numeric 

select location, date, total_cases, total_deaths,
(cast(total_deaths as numeric)/cast(total_cases as numeric))*100 as Death_percentage
From Covid_deaths
Order by 1,2;

-- checking the data for Poland
-- shows the probability of dying if you contract covid in Poland
select location, date, total_cases, total_deaths,
(cast(total_deaths as numeric)/cast(total_cases as numeric))*100 as Death_percentage
From Covid_deaths
where location = 'Poland'
Order by 1,2;

-- analyzing total cases versus population
select location, date, population, total_cases,
(cast(total_deaths as numeric)/cast(total_cases as numeric))*100 as PercentagePopulationInfected
From Covid_deaths
where location = 'Poland'
Order by 1,2;

-- looking at countries with highest infection rate compared to population
select location, population, max(total_cases) as HighestInfectionCount,
max((cast(total_cases as numeric)/cast(population as numeric)))*100 as PercentPopulationInfected
From Covid_deaths
Group by location, population
Order by PercentPopulationInfected desc;

-- showing countries with the Highest Death Count per population
-- changing the data type
-- cleaning location column with not null function
select location, max(cast(total_deaths as numeric)) as Total_Death_Count
From Covid_deaths
where continent is not null
Group by location
Order by Total_Death_Count desc;

-- showing the data by continent
select location, max(cast(total_deaths as numeric)) as Total_Death_Count
From Covid_deaths
where continent is null
Group by location
Order by Total_Death_Count desc;

-- showing statistics
select date, sum(cast(new_cases as numeric)) as New_cases
From Covid_deaths
where continent is not null
Group by date
Order by 1,2;

-- dealing with division by zero error
select date, sum(cast(new_cases as numeric)) as total_cases, sum(cast(new_deaths as numeric)) as total_deaths, sum(cast(new_deaths as numeric))/nullif(sum(cast(new_cases as numeric)),0) * 100 as Death_percentage
From Covid_deaths
where continent is not null 
Group by date
Order by 1,2;

select sum(cast(new_cases as numeric)) as total_cases, sum(cast(new_deaths as numeric)) as total_deaths, sum(cast(new_deaths as numeric))/nullif(sum(cast(new_cases as numeric)),0) * 100 as Death_percentage
From Covid_deaths
where continent is not null 
Order by 1,2;

select * from Covid_vaccination;

-- joining two data sets
select *
From Covid_deaths d
Join Covid_vaccination v
On d.location = v.location
and d.date = v.date;

-- checking the Total Population versus Vaccinations
select d.continent, d.location, d.date, d.population, v.new_vaccinations
From Covid_deaths d
Join Covid_vaccination v
On d.location = v.location
and d.date = v.date
where d.continent is not null
Order by 2,3;

--inserting a rolling count of vaccinated people
select d.continent, d.location, d.date, d.population, v.new_vaccinations,
sum(convert(numeric, v.new_vaccinations)) over (Partition by d.location Order by d.location,
d.date) as rolling_count
From Covid_deaths d
Join Covid_vaccination v
On d.location = v.location
and d.date = v.date
where d.continent is not null
Order by 2,3;

-- creating cte - common table expression
With Population_v_vaccination (continent, location, date, population, new_vaccinations, rolling_count)
as
(
select d.continent, d.location, d.date, d.population, v.new_vaccinations,
sum(convert(numeric, v.new_vaccinations)) over (Partition by d.location Order by d.location,
d.date) as rolling_count
From Covid_deaths d
Join Covid_vaccination v
On d.location = v.location
and d.date = v.date
where d.continent is not null
)
select *, (rolling_count/population)*100 as Percentage_of_population_vaccinated
From Population_v_vaccination;

-- temp table
Drop table if exists Percent_population_vaccinated
Create table Percent_population_vaccinated
(
continent nvarchar(255),
location nvarchar(255),
date datetime,
population numeric,
new_vaccinations numeric,
rolling_count numeric
)
Insert into Percent_population_vaccinated
select d.continent, d.location, d.date, d.population, v.new_vaccinations,
sum(convert(numeric, v.new_vaccinations)) over (Partition by d.location Order by d.location,
d.date) as rolling_count
From Covid_deaths d
Join Covid_vaccination v
On d.location = v.location
and d.date = v.date
where d.continent is not null

select *, (rolling_count/population) *100 as population_vaccinated
From Percent_population_vaccinated;


-- creating a view to store data for later visualizations
Create View Percent_population_vaccinated_1 as
select d.continent, d.location, d.date, d.population, v.new_vaccinations,
sum(convert(numeric, v.new_vaccinations)) over (Partition by d.location Order by d.location,
d.date) as rolling_count
From Covid_deaths d
Join Covid_vaccination v
On d.location = v.location
and d.date = v.date
where d.continent is not null

select * 
From Percent_population_vaccinated_1;




