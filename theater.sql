Write a query to print out a report of all tickets purchased by the customer with the email address 'gennaro.rath@mcdermott.co'. The report should include the event name and starts_at and the seat's section name, row, and seat number

customers
  customers.email
  id <--> tickets.customer_id

tickets
  customer_id <--> customers.id
  seat_id <--> seats.id
  event_id <--> events.id

events
  events.name
  events.starts_at
  id <--> tickets.event_id

seats
  seats.row
  seats.number
  id <--> tickets.seat_id
  section_id <--> sections.id

sections
  sections.name
  id <--> seats.section_id

SELECT e.name AS EVENTS


   event        |      starts_at      |    section    | row | seat
--------------------+---------------------+---------------+-----+------
 Kool-Aid Man       | 2016-06-14 20:00:00 | Lower Balcony | H   |   10
 Kool-Aid Man       | 2016-06-14 20:00:00 | Lower Balcony | H   |   11
 Green Husk Strange | 2016-02-28 18:00:00 | Orchestra     | O   |   14
 Green Husk Strange | 2016-02-28 18:00:00 | Orchestra     | O   |   15
 Green Husk Strange | 2016-02-28 18:00:00 | Orchestra     | O   |   16
 Ultra Archangel IX | 2016-05-23 18:00:00 | Upper Balcony | G   |    7
 Ultra Archangel IX | 2016-05-23 18:00:00 | Upper Balcony | G   |    8