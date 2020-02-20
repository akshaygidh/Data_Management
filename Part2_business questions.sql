#Query1 
SELECT l.neighbour_cleansed as ‘Neighbourhood’, avg(a.price) as ‘Price’
From location l
Inner join airbnb a
On l.location_id = a.location_id
GROUP BY l.neighbour_cleansed
Order by avg(a.price) desc
Limit 10;

#Query2
SELECT h.host_name as ‘Host_Name’, count(h.host_name) as ‘Number_of_listings’, avg(a.review_count) as ‘Avg_Ratings’
From host_information h
Inner join airbnb a
On a.host_id = h.host_id
Group by h.host_name
Order by count(h.host_name) desc
Limit 10;

#Query3
SELECT l.neighbour_cleansed as ‘Neighbourhood’, avg(a.price) as ‘Avg_Price’
From location l
Inner join airbnb a
On l.location_id = a.location_id
Where a.accomodations >=8
GROUP BY l.neighbour_cleansed
Order by avg(a.price) desc
Limit 10;

#Query4
SELECT l.first_review as ‘First_review’, avg(a.price) as ‘Average_Price’, lo.neighbour_cleansed as ‘Neighbourhood’
From airbnb a 
Left join location lo
On a.location_id = lo.location_id
Left join listing_info l
On l.id = a.id
Group by lo.neighbour_cleansed
Order by avg(a.price) desc;

#Query5
SELECT l.neighbour_cleansed as ‘Neighbourhood’, avg(a.review_score) as ‘Avg_Score’
From location l
Inner join airbnb a
On l.location_id = a.location_id
GROUP BY l.neighbour_cleansed
Order by avg(a.review_score)
Limit 5;

