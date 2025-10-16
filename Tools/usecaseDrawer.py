from graphviz import Digraph

# Create a directed graph for better layout control
dot = Digraph(comment="CDSS Use Case Diagram", format='png')
dot.attr(rankdir='LR')

# Define styles
human_style = {'shape': 'ellipse', 'style': 'filled', 'fillcolor': 'lightyellow'}
system_style = {'shape': 'box', 'style': 'filled', 'fillcolor': 'lightblue'}
usecase_style = {'shape': 'ellipse', 'style': 'filled', 'fillcolor': 'white'}

# Human actors
dot.node('Physician', 'Physician', **human_style)
dot.node('Nurse', 'Nurse', **human_style)
dot.node('LabTech', 'Lab Technician', **human_style)
dot.node('Pharmacist', 'Pharmacist', **human_style)
dot.node('PublicHealth', 'Public Health Officer', **human_style)

# System actors
dot.node('EMR', 'EMR System', **system_style)
dot.node('LIS', 'Laboratory Information System', **system_style)
dot.node('ExtKB', 'External Knowledge Base', **system_style)
dot.node('Admin', 'System Administrator', **human_style)

# CDSS system boundary
dot.node('UC_Diagnosis', 'Suggest Diagnosis', **usecase_style)
dot.node('UC_Medication', 'Recommend Medication', **usecase_style)
dot.node('UC_Investigation', 'Suggest Investigations', **usecase_style)
dot.node('UC_Alerts', 'Generate Alerts/Reminders', **usecase_style)
dot.node('UC_UpdateKB', 'Update Knowledge Base', **usecase_style)

# Connections: Humans → EMR → CDSS
dot.edge('Physician', 'EMR')
dot.edge('Nurse', 'EMR')
dot.edge('LabTech', 'EMR')
dot.edge('Pharmacist', 'EMR')
dot.edge('PublicHealth', 'EMR')

# Systems connecting to CDSS
dot.edge('EMR', 'UC_Diagnosis')
dot.edge('EMR', 'UC_Medication')
dot.edge('EMR', 'UC_Investigation')
dot.edge('EMR', 'UC_Alerts')

dot.edge('LIS', 'UC_Investigation')
dot.edge('ExtKB', 'UC_Diagnosis')
dot.edge('ExtKB', 'UC_Medication')
dot.edge('Admin', 'UC_UpdateKB')

# Render in current directory
output_path = 'cdss_usecase_diagram'  # no absolute path
dot.render(output_path, cleanup=True)

print(f"Use case diagram saved as {output_path}.png")
