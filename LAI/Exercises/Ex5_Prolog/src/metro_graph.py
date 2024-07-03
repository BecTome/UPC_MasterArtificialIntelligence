import networkx as nx
import matplotlib.pyplot as plt

# Define the links
links = [
    ('placasants', 'entenca', {'duration': 4, 'line': 'blue'}),
    # ('entenca', 'placasants', {'duration': 4, 'line': 'blue'}),
    ('entenca', 'hospitalclinic', {'duration': 2, 'line': 'blue'}),
    ('hospitalclinic', 'diagonal', {'duration': 3, 'line': 'blue'}),
    ('diagonal', 'verdaguer', {'duration': 4, 'line': 'blue'}),
    ('verdaguer', 'sagradafamilia', {'duration': 5, 'line': 'blue'}),


    # ('espanya', 'campana', {'duration': 5, 'line': 'darkblue'}),

    ('palaureial', 'mariacristina', {'duration': 2, 'line': 'green'}),
    ('mariacristina', 'lescorts', {'duration': 2, 'line': 'green'}),
    ('lescorts', 'pcentre', {'duration': 3, 'line': 'green'}),
    ('pcentre', 'santsestacio', {'duration': 3, 'line': 'green'}),
    ('santsestacio', 'espanya', {'duration': 2, 'line': 'green'}),
    ('espanya', 'catalunya', {'duration': 2, 'line': 'green'}),

    
    ('espanya', 'placasants', {'duration': 5, 'line': 'red'}),
    ('espanya', 'rocafort', {'duration': 3, 'line': 'red'}),
    ('rocafort', 'urgell', {'duration': 2, 'line': 'red'}),
    ('urgell', 'universitat', {'duration': 4, 'line': 'red'}),
    ('universitat', 'catalunya', {'duration': 4, 'line': 'red'}),


]

links = sorted(links, key=lambda x: x[2]['line'])

# Create a directed graph
G = nx.DiGraph()

# Add nodes and edges to the graph
for link in links:
    G.add_edge(link[0], link[1], duration=link[2]['duration'], line=link[2]['line'], edge_colors=link[2]['line'])


edge_colors = [edge[2]['line'] for edge in links]

# Plot the graph
plt.figure(figsize=(12, 8))  # Adjust the figure size
pos = nx.spring_layout(G, k=0.5, iterations=100)  # Adjust spring layout parameters
nx.draw(G, pos, with_labels=True, node_size=700, node_color='lightblue', font_size=10, font_weight='bold', edge_color=edge_colors, arrowsize=20, width=2,
        connectionstyle='arc3,rad=0.2')
edge_labels = nx.get_edge_attributes(G, 'duration')
# nx.draw_networkx_edges(G, pos, connectionstyle='arc3,rad=0.2')
nx.draw_networkx_edge_labels(G, pos, edge_labels=edge_labels, font_color='k')

# Display the plot
plt.show()
