# Sam

if you can create some bootstrap data, and a basic meteor method to search based on tags, I can get those results on the client and plug it into d3 for you. I'm uncertain how to results would be visualized though. If you search "location: venesuela", you'll end up with a ton of nodes. But I'm not sure if theres a way to query for all edges between all those nodes. 

# To Do

- bootstrap some fake data into neo4j
- search
  - tags
  - names
  - types
  - custom/advanced queries
    - shortest path between two nodes
    - largest clique
- results
  - if more than N results, show in a list
  - else show in a graph
  - how exactly is this data presented?
- d3 graph
  - hover to show details
  - click on a button to fetch more from that node and add to the graph

So how is this all going to work / look?

Everything is going to be done using Meteor methods. There will need to be a spinner in a corner to you know if the app is working on a method so you dont spam the shit of the server.

What's still lingering in the air is specifically how to show results of a search.

# Getting Started

Install and setup Neo4j

    brew install neo4j
    npm install -g neo4j

Then start Neo4j and start Meteor

    neo4j start
    meteor

You should be able to see the Neo4j browser at the Neo4j url (default: http://localhost:7474/).

When you're done, be sure to stop Neo4j as well

    neo4j stop

To reset Neo4j, delete `data/graph.db`. If you used brew to install Neo4j, then the path will be similar to the following:

    rm -rf /usr/local/Cellar/neo4j/2.1.7/libexec/data/graph.db

Or you can use the following queries to delete all relationships and all nodes

    match ()-[r]->(), (n) delete r,n