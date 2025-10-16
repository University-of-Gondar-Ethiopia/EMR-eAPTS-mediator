from graphviz import Digraph

# Create directed graph
dot = Digraph(comment="General Use Case Diagram for CDSS", format='png')

# Graph attributes
dot.attr(rankdir='LR')

# Define styles
actor_style = {'shape': 'ellipse', 'style': 'filled', 'fillcolor': 'lightyellow'}
system_style = {'shape': 'box', 'style': 'filled', 'fillcolor': 'lightblue'}
usecase_style = {'shape': 'ellipse', 'style': 'filled', 'fillcolor': 'white'}

# External actors (systems & humans)
dot.node('Clinician', 'Clinician', **actor_style)
dot.node('Nurse', 'Nurse', **actor_style)
dot.node('EMR', 'EMR System', **system_style)
dot.node('LIS', 'Lab Information System', **system_style)
dot.node('RIS', 'Radiology Information System', **system_style)
dot.node('PIS', 'Pathology Information System', **system_style)

# CDSS as central system
dot.node('CDSS', 'CDSS', **system_style)

# Use cases inside CDSS
usecases = [
    "Fetch patient history from EMR",
    "Fetch lab findings",
    "Fetch radiology findings",
    "Fetch pathology findings",
    "Analyze clinical logic",
    "Predict & rule out diagnoses",
    "Suggest investigations",
    "Suggest management plans"
]

for i, uc in enumerate(usecases, 1):
    uc_id = f"UC{i}"
    dot.node(uc_id, uc, **usecase_style)
    dot.edge('CDSS', uc_id)

# Connections
dot.edge('Clinician', 'EMR')
dot.edge('Nurse', 'EMR')
dot.edge('EMR', 'CDSS')
dot.edge('LIS', 'CDSS')
dot.edge('RIS', 'CDSS')
dot.edge('PIS', 'CDSS')

# Render diagram
file_path = 'cdss_usecase_diagram'
dot.render(file_path, cleanup=True)

file_path + '.png'
