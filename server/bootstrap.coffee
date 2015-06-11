@Neo4j = new Neo4jDB()
stringify = Neo4j.stringify.bind(Neo4j)

# # debug = console.log.bind(console)
# debug = lodash.noop

seed = ->
  # Creating 26 people
  Neo4j.query "MERGE (a:Person {name:'Person A'})"
  Neo4j.query "MERGE (a:Person {name:'Person B'})"
  Neo4j.query "MERGE (a:Person {name:'Person C'})"
  Neo4j.query "MERGE (a:Person {name:'Person D'})"
  Neo4j.query "MERGE (a:Person {name:'Person E'})"
  Neo4j.query "MERGE (a:Person {name:'Person F'})"
  Neo4j.query "MERGE (a:Person {name:'Person G'})"
  Neo4j.query "MERGE (a:Person {name:'Person H'})"
  Neo4j.query "MERGE (a:Person {name:'Person I'})"
  Neo4j.query "MERGE (a:Person {name:'Person J'})"
  Neo4j.query "MERGE (a:Person {name:'Person K'})"
  Neo4j.query "MERGE (a:Person {name:'Person L'})"
  Neo4j.query "MERGE (a:Person {name:'Person M'})"
  Neo4j.query "MERGE (a:Person {name:'Person N'})"
  Neo4j.query "MERGE (a:Person {name:'Person O'})"
  Neo4j.query "MERGE (a:Person {name:'Person P'})"
  Neo4j.query "MERGE (a:Person {name:'Person Q'})"
  Neo4j.query "MERGE (a:Person {name:'Person R'})"
  Neo4j.query "MERGE (a:Person {name:'Person S'})"
  Neo4j.query "MERGE (a:Person {name:'Person T'})"
  Neo4j.query "MERGE (a:Person {name:'Person U'})"
  Neo4j.query "MERGE (a:Person {name:'Person V'})"
  Neo4j.query "MERGE (a:Person {name:'Person W'})"
  Neo4j.query "MERGE (a:Person {name:'Person X'})"
  Neo4j.query "MERGE (a:Person {name:'Person Y'})"
  Neo4j.query "MERGE (a:Person {name:'Person Z'})"

  # Creating 5 companies: 2 industries
  Neo4j.query "MERGE (a:Company {name:'Company A', industry:['oil']})"
  Neo4j.query "MERGE (a:Company {name:'Company B', industry:['oil']})"
  Neo4j.query "MERGE (a:Company {name:'Company C', industry:['finance']})"
  Neo4j.query "MERGE (a:Company {name:'Company D', industry:['finance']})"
  Neo4j.query "MERGE (a:Company {name:'Company E', industry:['finance']})"

  # Creating 6 jurisdictions: 4 countries, 3 states, 2 cities
  Neo4j.query "MERGE (a:Jurisdiction {name:'United States'})"
  Neo4j.query "MERGE (a:Jurisdiction {name:'Venezuela'})"
  Neo4j.query "MERGE (a:Jurisdiction {name:'Russia'})"
  Neo4j.query "MERGE (a:Jurisdiction {name:'Ukraine'})"

  # Creating 2 organizations: 2 industries
  Neo4j.query "MERGE (a:Organization {name:'Organization A', industry:['politics']})"
  Neo4j.query "MERGE (a:Organization {name:'Organization B', industry:['terrorism','drug trafficking']})"

  # Creating edges between all people and their jurisdictions
  Neo4j.query "MATCH (a:Person {name:'Person A'}) MATCH (b:Jurisdiction {name:'United States'}) MERGE (a)-[r:CITIZEN]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person B'}) MATCH (b:Jurisdiction {name:'United States'}) MERGE (a)-[r:CITIZEN]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person C'}) MATCH (b:Jurisdiction {name:'United States'}) MERGE (a)-[r:CITIZEN]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person D'}) MATCH (b:Jurisdiction {name:'United States'}) MERGE (a)-[r:CITIZEN]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person E'}) MATCH (b:Jurisdiction {name:'United States'}) MERGE (a)-[r:CITIZEN]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person F'}) MATCH (b:Jurisdiction {name:'United States'}) MERGE (a)-[r:CITIZEN]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person G'}) MATCH (b:Jurisdiction {name:'United States'}) MERGE (a)-[r:CITIZEN]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person H'}) MATCH (b:Jurisdiction {name:'United States'}) MERGE (a)-[r:CITIZEN]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person I'}) MATCH (b:Jurisdiction {name:'United States'}) MERGE (a)-[r:CITIZEN]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person J'}) MATCH (b:Jurisdiction {name:'United States'}) MERGE (a)-[r:CITIZEN]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person K'}) MATCH (b:Jurisdiction {name:'United States'}) MERGE (a)-[r:CITIZEN]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person L'}) MATCH (b:Jurisdiction {name:'Venezuela'}) MERGE (a)-[r:CITIZEN]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person M'}) MATCH (b:Jurisdiction {name:'Venezuela'}) MERGE (a)-[r:CITIZEN]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person N'}) MATCH (b:Jurisdiction {name:'Venezuela'}) MERGE (a)-[r:CITIZEN]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person O'}) MATCH (b:Jurisdiction {name:'Venezuela'}) MERGE (a)-[r:CITIZEN]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person P'}) MATCH (b:Jurisdiction {name:'Venezuela'}) MERGE (a)-[r:CITIZEN]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person Q'}) MATCH (b:Jurisdiction {name:'Venezuela'}) MERGE (a)-[r:CITIZEN]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person R'}) MATCH (b:Jurisdiction {name:'Venezuela'}) MERGE (a)-[r:CITIZEN]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person S'}) MATCH (b:Jurisdiction {name:'Venezuela'}) MERGE (a)-[r:CITIZEN]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person T'}) MATCH (b:Jurisdiction {name:'Russia'}) MERGE (a)-[r:CITIZEN]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person U'}) MATCH (b:Jurisdiction {name:'Russia'}) MERGE (a)-[r:CITIZEN]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person V'}) MATCH (b:Jurisdiction {name:'Russia'}) MERGE (a)-[r:CITIZEN]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person W'}) MATCH (b:Jurisdiction {name:'Russia'}) MERGE (a)-[r:CITIZEN]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person X'}) MATCH (b:Jurisdiction {name:'Ukraine'}) MERGE (a)-[r:CITIZEN]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person Y'}) MATCH (b:Jurisdiction {name:'Ukraine'}) MERGE (a)-[r:CITIZEN]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person Z'}) MATCH (b:Jurisdiction {name:'Ukraine'}) MERGE (a)-[r:CITIZEN]->(b)"

  # Creating edges between companies and their jurisdictions
  Neo4j.query "MATCH (a:Company {name:'Company A'}) MATCH (b:Jurisdiction {name:'Venezuela'}) MERGE (a)-[r:LOCATION]->(b)"
  Neo4j.query "MATCH (a:Company {name:'Company A'}) MATCH (b:Jurisdiction {name:'United States'}) MERGE (a)-[r:LOCATION]->(b)"
  Neo4j.query "MATCH (a:Company {name:'Company A'}) MATCH (b:Jurisdiction {name:'Russia'}) MERGE (a)-[r:LOCATION]->(b)"
  Neo4j.query "MATCH (a:Company {name:'Company B'}) MATCH (b:Jurisdiction {name:'United States'}) MERGE (a)-[r:LOCATION]->(b)"
  Neo4j.query "MATCH (a:Company {name:'Company C'}) MATCH (b:Jurisdiction {name:'United States'}) MERGE (a)-[r:LOCATION]->(b)"
  Neo4j.query "MATCH (a:Company {name:'Company D'}) MATCH (b:Jurisdiction {name:'Ukraine'}) MERGE (a)-[r:LOCATION]->(b)"
  Neo4j.query "MATCH (a:Company {name:'Company D'}) MATCH (b:Jurisdiction {name:'Russia'}) MERGE (a)-[r:LOCATION]->(b)"
  Neo4j.query "MATCH (a:Company {name:'Company E'}) MATCH (b:Jurisdiction {name:'United States'})  MERGE (a)-[r:LOCATION]->(b)"

  # Creating organizations and their jurisdictions
  Neo4j.query "MATCH (a:Organization {name:'Organization A'}) MATCH (b:Jurisdiction {name:'Ukraine'}) MERGE (a)-[r:LOCATION]->(b)"
  Neo4j.query "MATCH (a:Organization {name:'Organization A'}) MATCH (b:Jurisdiction {name:'Russia'}) MERGE (a)-[r:LOCATION]->(b)"
  Neo4j.query "MATCH (a:Organization {name:'Organization A'}) MATCH (b:Jurisdiction {name:'Venezuela'}) MERGE (a)-[r:LOCATION]->(b)"
  Neo4j.query "MATCH (a:Organization {name:'Organization B'}) MATCH (b:Jurisdiction {name:'United States'}) MERGE (a)-[r:LOCATION]->(b)"
  Neo4j.query "MATCH (a:Organization {name:'Organization B'}) MATCH (b:Jurisdiction {name:'Venezuela'}) MERGE (a)-[r:LOCATION]->(b)"
  Neo4j.query "MATCH (a:Organization {name:'Organization B'}) MATCH (b:Jurisdiction {name:'United States'}) MERGE (a)-[r:LOCATION]->(b)"

  # Creating "who works for who" edges with regards to people and companies
  Neo4j.query "MATCH (a:Person {name:'Person A'}) MATCH (b:Company {name:'Company A'}) MERGE (a)-[r:WORKS_FOR]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person A'}) MATCH (b:Company {name:'Company B'}) MERGE (a)-[r:WORKS_FOR]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person A'}) MATCH (b:Company {name:'Company C'}) MERGE (a)-[r:WORKS_FOR]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person B'}) MATCH (b:Company {name:'Company A'}) MERGE (a)-[r:WORKS_FOR]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person C'}) MATCH (b:Company {name:'Company A'}) MERGE (a)-[r:WORKS_FOR]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person D'}) MATCH (b:Company {name:'Company A'}) MERGE (a)-[r:WORKS_FOR]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person E'}) MATCH (b:Company {name:'Company A'}) MERGE (a)-[r:WORKS_FOR]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person F'}) MATCH (b:Company {name:'Company B'}) MERGE (a)-[r:WORKS_FOR]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person G'}) MATCH (b:Company {name:'Company B'}) MERGE (a)-[r:WORKS_FOR]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person H'}) MATCH (b:Company {name:'Company B'}) MERGE (a)-[r:WORKS_FOR]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person I'}) MATCH (b:Company {name:'Company B'}) MERGE (a)-[r:WORKS_FOR]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person J'}) MATCH (b:Company {name:'Company B'}) MERGE (a)-[r:WORKS_FOR]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person K'}) MATCH (b:Company {name:'Company B'}) MERGE (a)-[r:WORKS_FOR]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person L'}) MATCH (b:Company {name:'Company C'}) MERGE (a)-[r:WORKS_FOR]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person M'}) MATCH (b:Company {name:'Company C'}) MERGE (a)-[r:WORKS_FOR]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person N'}) MATCH (b:Company {name:'Company C'}) MERGE (a)-[r:WORKS_FOR]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person O'}) MATCH (b:Company {name:'Company C'}) MERGE (a)-[r:WORKS_FOR]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person P'}) MATCH (b:Company {name:'Company C'}) MERGE (a)-[r:WORKS_FOR]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person Q'}) MATCH (b:Company {name:'Company C'}) MERGE (a)-[r:WORKS_FOR]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person R'}) MATCH (b:Company {name:'Company D'}) MERGE (a)-[r:WORKS_FOR]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person S'}) MATCH (b:Company {name:'Company D'}) MERGE (a)-[r:WORKS_FOR]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person T'}) MATCH (b:Company {name:'Company D'}) MERGE (a)-[r:WORKS_FOR]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person U'}) MATCH (b:Company {name:'Company D'}) MERGE (a)-[r:WORKS_FOR]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person V'}) MATCH (b:Company {name:'Company D'}) MERGE (a)-[r:WORKS_FOR]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person W'}) MATCH (b:Company {name:'Company E'}) MERGE (a)-[r:WORKS_FOR]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person X'}) MATCH (b:Company {name:'Company E'}) MERGE (a)-[r:WORKS_FOR]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person Y'}) MATCH (b:Company {name:'Company E'}) MERGE (a)-[r:WORKS_FOR]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person Z'}) MATCH (b:Company {name:'Company E'}) MERGE (a)-[r:WORKS_FOR]->(b)"

  # Creating "who works for who" edges with regards to people and organizations
  Neo4j.query "MATCH (a:Person {name:'Person A'}) MATCH (b:Organization {name:'Organization A'}) MERGE (a)-[r:WORKS_FOR]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person C'}) MATCH (b:Organization {name:'Organization A'}) MERGE (a)-[r:WORKS_FOR]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person Z'}) MATCH (b:Organization {name:'Organization A'}) MERGE (a)-[r:WORKS_FOR]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person R'}) MATCH (b:Organization {name:'Organization A'}) MERGE (a)-[r:WORKS_FOR]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person U'}) MATCH (b:Organization {name:'Organization A'}) MERGE (a)-[r:WORKS_FOR]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person S'}) MATCH (b:Organization {name:'Organization B'}) MERGE (a)-[r:WORKS_FOR]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person T'}) MATCH (b:Organization {name:'Organization B'}) MERGE (a)-[r:WORKS_FOR]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person U'}) MATCH (b:Organization {name:'Organization B'}) MERGE (a)-[r:WORKS_FOR]->(b)"
  Neo4j.query "MATCH (a:Person {name:'Person V'}) MATCH (b:Organization {name:'Organization B'}) MERGE (a)-[r:WORKS_FOR]->(b)"


# Find all the nodes in the database
x = Neo4j.query "MATCH (a) RETURN (a)"

# Determine if there are 0; if so, seed the database
if x.length is 0
  seed()
