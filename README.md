# ETL NBA Report 

<h4> Introduction </h4>
<P> For this project, we extract, transform and load raw NBA data gathered from various sources. Showcasing our ability to create an efficient process of extracting data, transforming data and loading data was the main goal. The final tables provide information on a variety of NBA player statistics. The data was gathered from different sources and using different methods, was cleaned, transformed and and finally loaded to a public database.  </p>

<h4>Background</h4>
<p> This project is the second series to a four part analysis. Our previous analysis was done on NBA stats with the intention to create insightful content and visualization that would then be used as the foundation for our continued analysis. </p>

<h4>Purpose</h4>
<p>The purpose of this assignment is to showcase our ability to extract data from various sources as well as cleaning the data and loading the results in a database with public access. </p>

<h4>Methods</h4>
<p> Our methods were concentrated in the area of ETL developement(Extract, Transform, and Load).
As part of the extraction process we used various extracting methods like web scraping, API calls, and downloading data files like csv and json. This gave us the foundation to begin the analysis.</p>

<p> Next we began our transformational modification of all the data that had been collected. The first thing that we did was inspect the data types of all the columns within each table to see compatibility and adjust accordingly. We then removed all rows with missing or corrupted data and droped any uneccessay columns. Different data tables were then joined together to create larger more complete data tables. Finally each table was given a primary key aswell as a foreign key to prepare for the loading of each table. </p>

<p>In this final portion of this project we uploaded each clean table that was created and stored it into the mongodb database. This completes the loading aspect of the project and our data tables can now be accessed at anytime.</p>

<h4>Limitations</h4>
<p>Initially we wanted to load the tables into Postgres. However, while creating the ERD and the tables schemata we realized that the primary keys were not all unique. For example, one of the primary keys was the player names field; but the tables have a one to many and many to many relationships. Alternately, we load the tables into MongoDB instead.</p>

<h4>Results</h4>
<p> </p>

<h4>Instrumentation</h4>
<ul>

<li>VS Code</li>
<li>Quick DBD</li>
<li>PostgreSQL</li>
<li>Jupyter Notebook</li>

</ul>

<h4>References</h4>
<ul>

<li> <a href="https://www.kaggle.com/">Kaggle</a></li>
<li> <a href="https://data.world/">Data World</a></li>
<li> <a href="https://www.basketball-reference.com/">Basketball Reference</a></li>
<li> <a href="pip install nba-api">NBA API Python Library</a></li>
</ul>

